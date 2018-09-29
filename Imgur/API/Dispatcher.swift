//
//  Dispatcher.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

typealias APIRequestSuccess = (_ data: Decodable?) -> Void
typealias APIRequestFailed = (_ error: Error) -> Void

protocol DispatcherProtocol {
    var environment: Environment { get set }
    func execute(
        request: Request,
        onSuccess: APIRequestSuccess,
        onError: APIRequestFailed
    )
}

class Dispatcher: DispatcherProtocol {
    var environment: Environment
    
    init(environment: Environment) {
        self.environment = environment
    }
    
    func execute(
        request: Request,
        onSuccess: APIRequestSuccess,
        onError: APIRequestFailed
    ){
        let url = URL(string: "\(environment.host)/\(request.path)")!
        Alamofire.request(
            url,
            method: request.method,
            parameters: request.parameters,
            encoding: request.parametersEncoding,
            headers: environment.headers
        ).responseJSON { (response) in
                print(response)
        }
    }
}
