//
//  AlbumService.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

final class AlbumService: BaseNetworkService, AlbumServiceProtocol {

    func getAlbum(
        albumHash: String,
        onSuccess: @escaping (Album) -> Void,
        onFailure: @escaping (Errors) -> Void
    ) {
        let handler = ResponseHandler<Album>(decoder: decoder)
        
        dispatcher.execute(
            request: ImgurAPI.AlbumRequests.getAlbum(albumHash: albumHash)
        ) { (response) in
            handler.handle(
                response: response,
                onSuccess: onSuccess,
                onFailure: onFailure
            )
        }
    }
    
    func getAlbumImages(
        albumHash: String,
        onSuccess: @escaping ([Image]) -> Void,
        onFailure: @escaping (Errors) -> Void
    ) {
        let handler = ResponseHandler<[Image]>(decoder: decoder)
        
        dispatcher.execute(
        request: ImgurAPI.AlbumRequests.getAlbumImages(albumHash: albumHash)) { (response) in
            handler.handle(
                response: response,
                onSuccess: onSuccess,
                onFailure: onFailure
            )
        }
    }
    
    
}
