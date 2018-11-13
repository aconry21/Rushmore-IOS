//
//  RusheeFeedCell.swift
//  Rushmore
//
//  Created by Austin C on 10/31/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class RusheeFeedCell: UITableViewCell {

 
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var feedLabel: UILabel!
    
    func setPost(post: Post){
        feedImageView.image = post.image
        feedLabel.text = post.title
    }
    
    
}
