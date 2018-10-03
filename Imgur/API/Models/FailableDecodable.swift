//
//  FailableDecodable.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 03/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct FailableDecodable<T>: Decodable where T: Decodable {
    let value: T?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        value = try? container.decode(T.self)
    }
}
