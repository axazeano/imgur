//
//  Message.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 03/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

/// The base model for a message.
struct Message: Decodable {
    
    /// The ID for the message
    let id: Int
    
    /// Account username of person sending the message
    let from: String
    
    /// The account ID of the person receiving the message
    let accountId: Int
    
    /// The account ID of the person who sent the message
    let senderId: Int
    
    /// Text of the message
    let body: String
    
    /// ID for the overall conversation
    let conversationId: Int
    
    /// Time message was sent, epoch time
    let datetime: Date
}
