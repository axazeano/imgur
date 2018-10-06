//
//  ApiError.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 06/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct ErrorResponse: Decodable {
    let error: Error
    let request: String
    let method: String
    
    struct Error: Decodable {
        let code: Int
        let message: String
        let type: String
    }
}
