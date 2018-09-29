//
//  GalleryAlbum.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

/// The data model formatted for gallery albums.
struct GalleryAlbum: Codable {
    
    /// The ID for the image
    let id: String
    
    /// The title of the album in the gallery
    let title: String
    
    /// OPTIONAL, The description of the album in the gallery
    let description: String?
    
    /// Time inserted into the gallery, epoch time
    let datetime: Date
    
    /// The ID of the album cover image
    let cover: String
    
    /// The width, in pixels, of the album cover image
    let coverWidth: Int
    
    /// The height, in pixels, of the album cover image
    let coverHeight: Int
    
    /// The account username or null if it's anonymous.
    let accountUrl: String?
    
    /// The account ID of the account that uploaded it, or null.
    let accountId: Int?
    
    /// The privacy level of the album, you can only view public if not logged in as album owner
    let privacy: String
    
    /// The view layout of the album.
    let layout: String
    
    /// The number of image views
    let views: Int
    
    /// The URL link to the album
    let link: String
    
    /// Upvotes for the image
    let ups: Int
    
    /// Number of downvotes for the image
    let downs: Int
    
    /// Upvotes minus downvotes
    let points: Int
    
    /// Imgur popularity score
    let score: Int
    
    /// if it's an album or not
    let isAlbum: Bool
    
    /// The current user's vote on the album. null if not signed in or if the user hasn't voted on it.
    let vote: String?
    
    /// Indicates if the current user favorited the album. Defaults to false if not signed in.
    let favorite: Bool
    
    /// Indicates if the album has been marked as nsfw or not. Defaults to null if information is not available.
    let nsfw: Bool?
    
    /// Number of comments on the gallery album.
    let commentCount: Int
    
    /// Topic of the gallery album.
    let topic: String
    
    /// Topic ID of the gallery album.
    let topicId: Int
    
    /// The total number of images in the album
    let imagesCount: Int
    
    /// An array of all the images in the album (only available when requesting the direct album)
    let images: [Image]
    
    /// Indicates if the album is in the most viral gallery or not.
    let inMostViral: Bool
}
