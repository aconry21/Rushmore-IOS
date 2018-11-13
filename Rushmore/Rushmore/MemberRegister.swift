//
//  MemberRegister.swift
//  Rushmore
//
//  Created by Austin C on 10/15/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit

class MemberRegister: UIViewController {
    var fraternities = ["Theta Tau", "Sigma Alpha Epsilon", "Sigma Phi Epsilon"]
    
    
    @IBOutlet weak var _first_name: UITextField!
    @IBOutlet weak var _last_name: UITextField!
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    
    @IBOutlet weak var _choose_fraternity: UITextField!
    @IBOutlet weak var _fraternity_picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        _fraternity_picker.removeFromSuperview()
        _choose_fraternity.text = fraternities[0]
        _choose_fraternity.inputView = _fraternity_picker
        
        _fraternity_picker.showsSelectionIndicator = true
        _fraternity_picker.delegate = self
        _fraternity_picker.dataSource = self
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: #selector(MemberRegister.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(MemberRegister.doneClick))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        _choose_fraternity.inputView = _fraternity_picker
        _choose_fraternity.inputAccessoryView = toolBar
        
        // Do any additional setup after loading the view.
    }
    
    @objc func doneClick(){
        
       
    }
    
    
    @IBAction func _register_click(_ sender: Any) {
        let first = _first_name.text?.trimmingCharacters(in: .whitespaces)
        let last = _last_name.text?.trimmingCharacters(in: .whitespaces)
        let username = _username.text?.trimmingCharacters(in: .whitespaces)
        let password = _password.text?.trimmingCharacters(in: .whitespaces)
        let fraternity = _choose_fraternity.text?.trimmingCharacters(in: .whitespaces)
        
        
        if AppDelegate.Members.contains(where: {$0.username == username!}) || AppDelegate.Rushees.contains(where: {$0.username == username!}){
            
            let alert = UIAlertController(title: "Username not available", message: "Username taken", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            AppDelegate.Members.append(User(firstName: first!, lastName: last!, userName: username!, password: password!, type: 1, fraternity: [fraternity!]))
            performSegue(withIdentifier: "MemberRegister", sender: self)
            
        }
        
        return
    }
    
}

extension MemberRegister: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func select(_ sender: UITextField) {
        _fraternity_picker.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fraternities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        _choose_fraternity.text  = fraternities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fraternities[row]
    }
    
}
