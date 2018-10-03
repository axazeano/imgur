//
//  GalleryItem.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

enum GalleryItem: Decodable {
    case image(GalleryImage)
    case album(GalleryAlbum)
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        
        if let image = try? container.decode(GalleryImage.self) {
            self = .image(image)
        } else if let album = try? container.decode(GalleryAlbum.self) {
            self = .album(album)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Can't decode value"
            )
        }
    }
}
