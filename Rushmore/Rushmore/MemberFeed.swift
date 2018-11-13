//
//  MemberFeed.swift
//  Rushmore
//
//  Created by Austin C on 11/9/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class MemberFeed: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var rushees: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        rushees = getRushees()
    }
    
    func getRushees() -> [User]{
        
        var temp: [User] = []
        
        for user in AppDelegate.Rushees {
           
            temp.append(user)
            
        }
        print(temp)
        return temp
        
    }
    
    

}

extension MemberFeed: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rushees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rushee = rushees[indexPath.row]
        print(rushee.firstName)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemberFeedCell") as! MemberFeedCell
        
        cell.setCell(user: rushee)
        
        return cell
    }
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        var profile = rushees[indexPath.row]
        
        
    }
    */
    
    
    
    
    
}
