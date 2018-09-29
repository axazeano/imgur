//
//  Album.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

/// This model represents the data for albums
struct Album: Codable {
    
    /// The ID for the album
    let id: String
    
    /// The title of the album in the gallery
    let title: String
    
    /// The title of the album in the gallery
    let description: String
    
    /// Time inserted into the gallery, epoch time
    let datetime: Date
    
    /// The ID of the album cover image
    let cover: String
    
    /// The width, in pixels, of the album cover image
    let coverWidth: Int
    
    /// The height, in pixels, of the album cover image
    let coverHeight: Int
    
    /// The account username or null if it's anonymous.
    let accountURL: String
    
    /// The account ID or null if it's anonymous.
    let accountID: String
    
    /// The privacy level of the album, you can only view public if not logged in as album owner
    let privacy: String
    
    /// The view layout of the album.
    let layout: String
    
    /// The number of album views
    let views: Int
    
    /// The URL link to the album
    let link: String
    
    /// Indicates if the current user favorited the image. Defaults to false if not signed in.
    let favorite: Bool
    
    /// Indicates if the image has been marked as nsfw or not. Defaults to null if information is not available.
    let nsfw: Bool
    
    /// If the image has been categorized by our backend then this will contain the section the image belongs in. (funny, cats, adviceanimals, wtf, etc)
    let section: String
    
    /// Order number of the album on the user's album page (defaults to 0 if their albums haven't been reordered)
    let order: Int
    
    /// OPTIONAL, the deletehash, if you're logged in as the album owner
    let deletehash: String?
    
    /// The total number of images in the album
    let imagesCount: Int
    
    /// An array of all the images in the album (only available when requesting the direct album)
    let images: [Image  ]
    
    /// True if the image has been submitted to the gallery, false if otherwise.
    let inGallery: Bool
}
