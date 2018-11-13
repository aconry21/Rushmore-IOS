//
//  EditMemberProfile.swift
//  Rushmore
//
//  Created by Austin C on 10/30/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class EditMemberProfile: UIViewController, UITextViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet var _edit_first_name: UITextField!
    @IBOutlet var _edit_last_name: UITextField!
    @IBOutlet var _edit_fraternity: UITextField!
    @IBOutlet var _edit_bio: UITextView!
    @IBOutlet var _profile_pic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        _profile_pic.image = AppDelegate.curr_login.picture
        _edit_first_name.text = AppDelegate.curr_login.firstName
        _edit_last_name.text = AppDelegate.curr_login.lastName
        _edit_fraternity.text = AppDelegate.curr_login.fraternity[0]
        _edit_bio.text = AppDelegate.curr_login.bio
    }
    
    func textViewDidChange(_ textView: UITextView) {
        AppDelegate.curr_login.bio = _edit_bio.text!
    }
    
    @IBAction func _edit_first(_ sender: Any) {
        AppDelegate.curr_login.firstName = _edit_first_name.text!
    }
    
    @IBAction func _edit_last(_ sender: Any) {
        AppDelegate.curr_login.lastName = _edit_last_name.text!
    }
    
    @IBAction func _edit_fraternity(_ sender: Any) {
        AppDelegate.curr_login.fraternity[0] = _edit_fraternity.text!
    }
    
    @IBAction func importImage(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true){
            //After complete
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            AppDelegate.curr_login.picture = image
            _profile_pic.image = image
        }
        else{
            //error
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButton(_ sender: Any) {
        AppDelegate.curr_login.firstName = _edit_first_name.text!
        AppDelegate.curr_login.lastName = _edit_last_name.text!
        AppDelegate.curr_login.bio = _edit_bio.text!
        AppDelegate.curr_login.picture = _profile_pic.image!
        AppDelegate.curr_login.fraternity[0] = _edit_fraternity.text!
        self.dismiss(animated: true, completion: nil)
    }
}
