//
//  Basic.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Basic<T>: Decodable where T: Decodable {
    let data: BasicData<T>
    let success: Bool
    let status: Int
    
    enum CodingKeys: String, CodingKey {
        case data
        case success
        case status
    }
}

enum BasicData<T>: Decodable where T: Decodable {
    case data(T)
    case error(ErrorResponse)
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        do {
            let data = try container.decode(T.self)
            self = .data(data)
        } catch {
            print(error)
        }
        
        
//        let container = try decoder.singleValueContainer()
        if let error = try? container.decode(ErrorResponse.self) {
            self = .error(error)
        } else if let data = try? container.decode(T.self) {
            self = .data(data)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Can't decode data field"
            )
        }
        
    }
}
