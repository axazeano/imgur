//
//  Account.swift
//  Imgur
//
//  Created by Владимир Кубанцев on 04/10/2018.
//  Copyright © 2018 voinc. All rights reserved.
//

import Foundation

struct Account: Decodable {
    
    /// The account id for the username requested.
    let id: Int
    
    /// The account username, will be the same as requested in the URL
    let url: String
    
    /// A basic description the user has filled out
    let bio: String
    
    /// The reputation for the account, in it's numerical format.
    let reputation: Float
    
    /// The epoch time of account creation
    let created: Date
}
