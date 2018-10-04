//
//  GalleryRequests.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 04/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

extension ImgurAPI {
    enum GalleryRequests: Request {
        
        var path: String {
            return ""
        }
        
        var method: HTTPMethod {
            return .get
        }
        
        var parameters: [String : Any]? {
            return nil
        }
        
        var headers: HTTPHeaders? {
            return nil
        }
        
        var parametersEncoding: ParameterEncoding {
            return URLEncoding.default
        }
        
        
    }
}
