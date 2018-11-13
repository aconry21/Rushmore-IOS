//
//  MemberFeedCell.swift
//  Rushmore
//
//  Created by Austin C on 11/9/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class MemberFeedCell: UITableViewCell {

    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setCell(user: User){
        print("here")
        profilePic.image = user.picture
        nameLabel.text = user.firstName + " " + user.lastName
    
    }
}
