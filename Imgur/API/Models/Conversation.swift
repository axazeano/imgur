//
//  Conversation.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 04/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Conversation: Decodable {
    
    /// Conversation ID
    let id: Int
    
    /// Preview of the last message
    let lastMessagePreview: String
    
    /// Time of last sent message, epoch time
    let datetime: Date
    
    /// Account ID of the other user in conversation
    let withAccountId: Int
    
    /// Account username of the other user in conversation
    let withAccount: String
    
    /// Total number of messages in the conversation
    let messageCount: Int
    
    /// OPTIONAL: (only available when requesting a specific conversation) Reverse sorted such that most recent message is at the end of the array.
    let messages: [Message]?
    
    /// OPTIONAL: (only available when requesting a specific conversation) Flag to indicate whether you've reached the beginning of the thread.
    let done: Bool?
    
    /// OPTIONAL: (only available when requesting a specific conversation) Number of the next page
    let page: Int?
}
