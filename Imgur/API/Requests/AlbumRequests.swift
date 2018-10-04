//
//  AlbumRequests.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 04/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation
import Alamofire

extension ImgurAPI {
    enum AlbumRequests: Request {
        case getAlbum(albumHash: String)
        case getAlbumImages(albumHash: String)
        case getAlbumImage(albumHash: String, imageHash: String)
        
        
        var path: String {
            switch self {
            case .getAlbum(let albumHash):
                return "album/\(albumHash)"
            case .getAlbumImages(let albumHash):
                return "album/\(albumHash)/images"
            case .getAlbumImage(let albumHash, let imageHash):
                return "album/\(albumHash)/image/\(imageHash)"
            }
        }
        
        var method: HTTPMethod {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return .get
            }
        }
        
        var parameters: [String : Any]? {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return nil
            }
        }
        
        var headers: HTTPHeaders? {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return nil
            }
        }
        
        var parametersEncoding: ParameterEncoding {
            return URLEncoding.default
        }
    }
}
