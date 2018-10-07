//
//  AuthService.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import AuthenticationServices

final class AuthService {
    private var webAuthSession: ASWebAuthenticationSession?
    private let authURL = URL(
        string: "https://api.imgur.com/oauth2/authorize?client_id=d4fa7d807a38aae&response_type=token"
    )!
    private let callbackURLScheme = "imgurapp://auth"
    private let authStoreKey = "authData"
    
    func performWebAuth(
        onSuccess: @escaping (Auth) -> Void,
        onFailure: @escaping (Error) -> Void
    ) {
        webAuthSession = ASWebAuthenticationSession(
            url: authURL,
            callbackURLScheme: callbackURLScheme,
            completionHandler: { [weak self] (url, error) in
                if let error = error {
                    onFailure(error)
                    return
                }
                guard let url = url else {
                    return
                }
                guard let authData = self?.buildAuthDataFrom(url: url) else {
                    return
                }
                self?.storeToUserDefault(authData: authData)
                onSuccess(authData)
        })
        webAuthSession?.start()
    }
    
    func getAuthData() -> Auth? {
        let decoder = JSONDecoder()
        guard let data = UserDefaults.standard.data(forKey: authStoreKey) else {
            return nil
        }
        guard let authData = try? decoder.decode(Auth.self, from: data) else {
            return nil
        }
        return authData
    }
    
    private func storeToUserDefault(authData: Auth) {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(authData) else {
            return
        }
        UserDefaults.standard.set(data, forKey: authStoreKey)
    }
    
    private func buildAuthDataFrom(url: URL) -> Auth? {
        guard let queryItems = URLComponents(string: url.absoluteString)?.queryItems else {
            return nil
        }
        
        guard let refreshToken = queryItems.first(where: { $0.name == "refresh_token" })?.value,
            let accessToken = queryItems.first(where: { $0.name == "access_token" })?.value,
            let expiresIn = queryItems.first(where: { $0.name == "expires_in" })?.value,
            let expiresInAsTimeInterval = Double(expiresIn),
            let accountUsername = queryItems.first(where: { $0.name == "account_username" })?.value,
            let accountId = queryItems.first(where: { $0.name == "account_id" })?.value,
            let accountIdAsInt = Int(accountId)
        else {
            return nil
        }
        return Auth(
            accessToken: accessToken,
            refreshToken: refreshToken,
            expiresIn: expiresInAsTimeInterval,
            accountUsername: accountUsername,
            accountId: accountIdAsInt
        )
    }
    
}
