//
//  Enviroment.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

final class Environment {
    /// Name of the Environment
    let name: String
    
    /// Host for requests
    let host: String
    
    /// HTTP headers
    var headers: [String: Any] = [:]
    
    /// Cache policy
    var cachePolicy: URLRequest.CachePolicy = .returnCacheDataDontLoad
    
    init(name: String, host: String) {
        self.name = name
        self.host = name
    }
}
