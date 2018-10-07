//
//  Errors.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

enum Errors {
    case responseError(ErrorResponse)
    case generalDataError
    case networkError(Error)
}
