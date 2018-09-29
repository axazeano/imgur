//
//  Basic.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Basic<T>: Decodable where T: Decodable {
    let data: T
    let success: Bool
    let status: Int
}
