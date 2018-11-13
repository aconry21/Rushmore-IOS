//
//  Login.swift
//  Rushmore
//
//  Created by Austin C on 10/2/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class Login: UIViewController {
    

    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    @IBOutlet weak var _login_button: UIButton!
    

    @IBAction func LoginButton(_ sender: UIButton) {
        let username = _username.text?.trimmingCharacters(in: .whitespaces)
        let password = _password.text?.trimmingCharacters(in: .whitespaces)
        

        if(username == "" || password == ""){
            return
        }
        //return account not found
        if !AppDelegate.Members.contains(where: {$0.username == username!}) && !AppDelegate.Rushees.contains(where: {$0.username == username!}){
            print("Username not found")
            return
        }
        if !AppDelegate.Members.contains(where: {$0.password == password!}) && !AppDelegate.Rushees.contains(where: {$0.password == password!}) {
            print("pass not found")
            return
        }
        
        if let curr_member = AppDelegate.Members.first(where: {$0.username == username!}){

            if curr_member.password == password! {
                AppDelegate.curr_login = curr_member
                performSegue(withIdentifier: "MemberLogin", sender: self)
            }
            
        }
        if let curr_member = AppDelegate.Rushees.first(where: {$0.username == username!}){
            
            if curr_member.password == password!{
                AppDelegate.curr_login = curr_member
                performSegue(withIdentifier: "RusheeLogin", sender: self)
            }
        }
        
    }
    
    
    
   
   
  
    
    
}


    
    

