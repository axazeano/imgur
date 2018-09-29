//
//  Basic.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Basic<T>: Codable where T: Codable {
    let data: T
    let success: Bool
    let status: Int
}
