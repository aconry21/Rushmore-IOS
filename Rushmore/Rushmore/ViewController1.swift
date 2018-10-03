//
//  ViewController1.swift
//  Rushmore
//
//  Created by Austin C on 10/2/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    
    @IBOutlet weak var _login_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButton(_ sender: Any) {
        let username = _username.text
        let password = _password.text
        
        if(username == "" || password == ""){
            return
        }
        
        //DoLogin(username!, password!)
    }

    func DoLogin(_ user:String, _ pwd:String){
        
        
    }
}
    
    

