//
//  MemberProfile.swift
//  Rushmore
//
//  Created by Austin C on 10/28/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class MemberProfile: UIViewController, UITextViewDelegate{
    
    
    @IBOutlet weak var memberPicture: UIImageView!
    @IBOutlet var _member_name: UILabel!
    @IBOutlet var _member_fraternity: UILabel!
    @IBOutlet var _member_bio: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        _member_fraternity.text = AppDelegate.curr_login.fraternity[0]
        _member_name.text = AppDelegate.curr_login.firstName + " " + AppDelegate.curr_login.lastName
        _member_bio.text = AppDelegate.curr_login.bio
        memberPicture.image = AppDelegate.curr_login.picture
    }
   
    
    
}
