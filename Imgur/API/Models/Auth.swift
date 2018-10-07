//
//  Auth.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Auth: Codable {
    let accessToken: String
    let refreshToken: String
    let expiresIn: Date
    let accountUsername: String
    let accountId: Int
    
    init(
        accessToken: String,
        refreshToken: String,
        expiresIn: TimeInterval,
        accountUsername: String,
        accountId: Int
    ) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.accountUsername = accountUsername
        self.accountId = accountId
        
        let date = Date(timeIntervalSince1970: expiresIn)
        self.expiresIn = date
    }
}
