//
//  Tag.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Tags: Decodable {
    let tags: [Tag]
}

struct Tag: Decodable {
    let name: String
    let followers: Int
    let totalItems: Int
    let following: Bool
    let items: [GalleryItem]
}
