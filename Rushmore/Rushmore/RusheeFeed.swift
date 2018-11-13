//
//  RusheeFeed.swift
//  Rushmore
//
//  Created by Austin C on 10/31/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class RusheeFeed: UIViewController{
    @IBOutlet weak var tableView: UITableView!

    var posts: [Post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        posts = createArray()
        
        
    }
    
    func createArray() -> [Post]{
        
        var tempPosts: [Post] = []
        
        let post1 = Post(image: #imageLiteral(resourceName: "Theta_Tau_image"), title: "Rush Theta Tau!")
        let post2 = Post(image: #imageLiteral(resourceName: "Sigma_Phi_Epsilon_image"), title: "Rush Sig Ep!")
        let post3 = Post(image: #imageLiteral(resourceName: "SAE_image"), title: "Rush SAE!")
        
        tempPosts.append(post1)
        tempPosts.append(post2)
        tempPosts.append(post3)
        
        return tempPosts

        
    }
    
  
    
    
    
}

extension RusheeFeed: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RusheeFeedCell") as! RusheeFeedCell
        
        cell.setPost(post: post)
    
        return cell
    }
    
}
