//
//  RusheeProfile.swift
//  Rushmore
//
//  Created by Austin C on 10/28/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class RusheeProfile: UIViewController, UITextViewDelegate{
    
    
    @IBOutlet var _rushee_name: UILabel!
    @IBOutlet var _rushee_bio: UITextView!
    
    @IBOutlet weak var profilePic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        _rushee_name.text = AppDelegate.curr_login.firstName + " " + AppDelegate.curr_login.lastName
        
        _rushee_bio.text = AppDelegate.curr_login.bio
        
        profilePic.image = AppDelegate.curr_login.picture
    }
    
    
    
    
    
   
    
}
