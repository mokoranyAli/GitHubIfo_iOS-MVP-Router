//
//  User.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation

class User: Codable {
    
    let name: String?
    let location: String?
    let blog: URL?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    
    
    private enum CodingKeys: String, CodingKey {
        case name
        case location
        case blog
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
        
    }
}
