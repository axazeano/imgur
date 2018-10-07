//
//  BaseNetworkService.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

class BaseNetworkService {
    let dispatcher: Dispatcher
    let environment: Environment
    let decoder: JSONDecoder
    
    init(dispatcher: Dispatcher, environment: Environment, decoder: JSONDecoder) {
        self.dispatcher = dispatcher
        self.environment = environment
        self.decoder = decoder
    }
}
