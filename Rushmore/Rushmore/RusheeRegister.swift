//
//  RusheeRegister.swift
//  Rushmore
//
//  Created by Austin C on 10/28/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class RusheeRegister: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var _first_name: UITextField!
    @IBOutlet weak var _last_name: UITextField!
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    
    
    
    @IBAction func _register_button(_ sender: UIButton) {
        let first_name = _first_name.text?.trimmingCharacters(in: .whitespaces)
        let last_name = _last_name.text?.trimmingCharacters(in: .whitespaces)
        let username = _username.text?.trimmingCharacters(in: .whitespaces)
        let password = _password.text?.trimmingCharacters(in: .whitespaces)
        
        
        
        if AppDelegate.Members.contains(where: {$0.username == username!}) || AppDelegate.Rushees.contains(where: {$0.username == username!}){
            let alert = UIAlertController(title: "Username not available", message: "Username taken", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
        else{
            AppDelegate.Rushees.append(User(firstName: first_name!, lastName: last_name!, userName: username!, password: password!, type: 0, fraternity: []))
            performSegue(withIdentifier: "RusheeRegister", sender: self)
        }
        
    }
}
