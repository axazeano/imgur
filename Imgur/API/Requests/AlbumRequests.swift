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
        case albumCreation(parameters: AlbumRequestsParameters.AlbumCreation)
        
        var path: String {
            switch self {
            case .getAlbum(let albumHash):
                return "album/\(albumHash)"
            case .getAlbumImages(let albumHash):
                return "album/\(albumHash)/images"
            case .getAlbumImage(let albumHash, let imageHash):
                return "album/\(albumHash)/image/\(imageHash)"
            case .albumCreation:
                return "album"
            }
        }
        
        var method: HTTPMethod {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return .get
            case .albumCreation:
                return .post
            }
        }
        
        var parameters: [String : Any]? {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return nil
            case .albumCreation(let parameters):
                return parameters.parameters
            }
        }
        
        var headers: HTTPHeaders? {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return nil
            case .albumCreation:
                return nil
            }
        }
        
        var parametersEncoding: ParameterEncoding {
            switch self {
            case .getAlbum, .getAlbumImage, .getAlbumImages:
                return URLEncoding.default
            case .albumCreation:
                return URLEncoding.httpBody
            }
        }
    }
}

extension ImgurAPI {
    struct AlbumRequestsParameters {
        struct AlbumCreation {
            
            /// The image ids that you want to be included in the album.
            let ids: [String]?
            
            /// The deletehashes of the images that you want to be included in the album.
            let deletehashes: [String]?
            
            /// The title of the album
            let title: String?
            
            /// The description of the album
            let description: String?
            
            /// Sets the privacy level of the album. Values are : `public` | `hidden` | `secret`. Defaults to user's privacy settings for logged in users.
            let privacy: Privacy?
            
            /// The ID of an image that you want to be the cover of the album
            let cover: String?
            
            var parameters: Parameters {
                return [
                    "ids": ids,
                    "deletehashes": deletehashes,
                    "title": title,
                    "description": description,
                    "privacy": privacy?.rawValue,
                    "cover": cover
                ].filter { $0.value != nil }
            }
        }
    }
}
