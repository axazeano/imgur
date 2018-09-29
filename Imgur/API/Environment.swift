//
//  Enviroment.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

final class Environment {
    /// Name of the Environment
    let name: String
    
    /// Host for requests
    let host: String
    
    /// HTTP headers
    var headers: HTTPHeaders = [:]
    
    /// Cache policy
    var cachePolicy: URLRequest.CachePolicy = .returnCacheDataDontLoad
    
    init(name: String, host: String) {
        self.name = name
        self.host = host
    }
}
