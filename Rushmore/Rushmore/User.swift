//
//  Rushee.swift
//  Rushmore
//
//  Created by Austin C on 10/28/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class User{
    var picture: UIImage
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    //1 for Member, 0 for rushee
    var type: Int
    var fraternity: [String]
    var bio: String
    
    init(firstName: String, lastName: String, userName: String, password: String, type: Int, fraternity: [String]){
        self.firstName = firstName
        self.lastName = lastName
        self.username = userName
        self.password = password
        self.type = type
        self.fraternity = fraternity
        self.bio = "Bio"
        self.picture = #imageLiteral(resourceName: "first")
    }
}

