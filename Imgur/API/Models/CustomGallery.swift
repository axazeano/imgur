//
//  CustomGallery.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct CustomGallery: Decodable {
    
    /// Username of the account that created the custom gallery
    let accountUrl: String
    
    /// The URL link to the custom gallery
    let link: String
    
    /// An array of all the tag names in the custom gallery
    let tags: [String]
    
    /// The total number of gallery items in the custom gallery
    let itemsCount: Int
    
    /// An array of all the gallery items in the custom gallery
    let items: [GalleryItem]
}
