//
//  ApiServiceFactory.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

final class ApiServiceFactory {
    let environment: Environment
    let dispatcher: Dispatcher
    let decoder: JSONDecoder
    
    static let shared = ApiServiceFactory()
    
    init() {
        environment = Environment(
            name: "test",
            host: "https://api.imgur.com/3",
            headers: ["Authorization": "Client-ID 9a6574ec5eb7228"]
        )
        dispatcher = Dispatcher(environment: environment)
        decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = JSONDecoder.DateDecodingStrategy.custom({ (decoder) -> Date in
            let container = try decoder.singleValueContainer()
            let timestamp = try container.decode(Double.self)
            return Date(timeIntervalSince1970: timestamp)
        })
    }
    
    func createAlbumService() -> AlbumServiceProtocol {
        return AlbumService(
            dispatcher: dispatcher,
            environment: environment,
            decoder: decoder
        )
    }
}
