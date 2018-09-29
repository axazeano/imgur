//
//  Request.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

protocol Request {
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any]? { get }
    var headers: HTTPHeaders? { get }
    var parametersEncoding: ParameterEncoding { get }
}
