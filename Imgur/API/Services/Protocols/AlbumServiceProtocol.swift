//
//  AlbumServiceProtocol.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 07/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

protocol AlbumServiceProtocol: class {
    func getAlbum(
        albumHash: String,
        onSuccess: @escaping (Album)->Void,
        onFailure: @escaping (Errors)->Void
    )
    
    func getAlbumImages(
        albumHash: String,
        onSuccess: @escaping ([Image])->Void,
        onFailure: @escaping (Errors)->Void
    )
}
