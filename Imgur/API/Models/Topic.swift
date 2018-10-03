//
//  Topic.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Topic: Decodable {
    let id: Int
    let name: String
    let description: String?
    let css: String?
    let ephemeral: Bool
    let topPost: FailableDecodable<GalleryItem>?
    let heroImage: FailableDecodable<Image>?
    let isHero: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case css
        case ephemeral
        case topPost = "topPost"
        case heroImage = "heroImage"
        case isHero = "isHero"
    }
}
