//
//  User.swift
//  twitter_alamofire_demo
//
//  Created by Brandon Shimizu on 10/8/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import Foundation

class User {
    
    // TODO: Add properties
    var name: String?
    var screenName: String?
    var profileImage: String?
    var profileImageUrl: URL
    
    var id: Int?
    var text: String?
    var favoriteCount: Int?
    var favorited: Bool?
    var retweetCount: Int?
    var retweeted: Bool?
    var user: User?
    var createdAtString: String?
    
    static var current: User?

    
    // TODO: Create initializer
    init(dictionary: [String: Any]) {
        name = dictionary["name"] as? String
        screenName = dictionary["screen_name"] as? String
        profileImage = dictionary["profile_image_url_https"] as? String
        profileImageUrl = URL(string:dictionary["profile_image_url_https"] as! String)!
    }
        
}
