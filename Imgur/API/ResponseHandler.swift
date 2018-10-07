//
//  ResponseHandler.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

struct ResponseHandler<T> where T: Decodable {
    let decoder: JSONDecoder
    
    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    func handle(
        response: DataResponse<Data>,
        onSuccess: @escaping (_ parsedObjet: T) -> Void,
        onFailure: @escaping (_ error: Errors) -> Void,
        performCompletionsOnQueue queue: DispatchQueue = DispatchQueue.main
    ) {
        
        if let networkError = response.error {
            queue.async {
                onFailure(.networkError(networkError))
            }
            return
        }
        
        guard let dataFromResponse = response.data else {
            queue.async {
                onFailure(.generalDataError)
            }
            return
        }
        
        guard let parsedObject = try? decoder.decode(Basic<T>.self, from: dataFromResponse) else {
            queue.async {
                onFailure(.generalDataError)
            }
            return
        }
        
        switch parsedObject.data {
        case .data(let parsedObject):
            queue.async {
                onSuccess(parsedObject)
            }
        case .error(let error):
            queue.async {
                onFailure(.responseError(error))
            }
        }
    }
}
