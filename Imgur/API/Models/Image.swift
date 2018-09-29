//
//  Image.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 29/09/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Image: Codable {
    /// The ID for the image
    let id: String
    
    /// OPTIONAL, The title of the image.
    let title: String?
    
    /// OPTIONAL, Description of the image.
    let description: String?
    
    /// Time uploaded, epoch time
    let datetime: Date
    
    /// Image MIME type.
    let type: String
    
    /// is the image animated
    let animated: Bool
    
    /// The width of the image in pixels
    let width: Int
    
    /// The height of the image in pixels
    let height: Int
    
    /// The size of the image in bytes
    let size: Int
    
    /// The number of image views
    let views: Int
    
    /// Bandwidth consumed by the image in bytes
    let bandwidth: Int
    
    /// OPTIONAL, the deletehash, if you're logged in as the image owner
    let deletehash: String?
    
    /// OPTIONAL, the original filename, if you're logged in as the image owner
    let name: String?
    
    /// OPTIONAL, If the image has been categorized by our backend then this will contain the section the image belongs in. (funny, cats, adviceanimals, wtf, etc)
    let section: String?
    
    /// The direct link to the the image. (Note: if fetching an animated GIF that was over 20MB in original size, a .gif thumbnail will be returned)
    let link: String
    
    /// OPTIONAL, The .gifv link. Only available if the image is animated and type is 'image/gif'.
    let gifv: String?
    
    /// OPTIONAL, The direct link to the .mp4. Only available if the image is animated and type is 'image/gif'.
    let mp4: String?
    
    /// OPTIONAL, The Content-Length of the .mp4. Only available if the image is animated and type is 'image/gif'. Note that a zero value (0) is possible if the video has not yet been generated
    let mp4Size: Int?
    
    /// OPTIONAL, Whether the image has a looping animation. Only available if the image is animated and type is 'image/gif'.
    let looping: Bool?
    
    /// Indicates if the current user favorited the image. Defaults to false if not signed in.
    let favorite: Bool
    
    /// OPTIONAL, Indicates if the image has been marked as nsfw or not. Defaults to null if information is not available.
    let nsfw: Bool?
    
    /// OPTIONAL, The current user's vote on the album. null if not signed in, if the user hasn't voted on it, or if not submitted to the gallery.
    let vote: String?
    
    /// True if the image has been submitted to the gallery, false if otherwise.
    let inGallery: Bool
}
