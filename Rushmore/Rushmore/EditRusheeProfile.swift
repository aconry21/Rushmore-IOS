//
//  EditRusheeProfile.swift
//  Rushmore
//
//  Created by Austin C on 10/29/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import Foundation
import UIKit

class EditRusheeProfile: UIViewController, UITextViewDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    @IBOutlet weak var profilePicView: UIImageView!
    @IBOutlet var _edit_name_field: UITextField!
    @IBOutlet var _edit_last_name: UITextField!
    
    @IBOutlet var _edit_bio: UITextView!
    @IBAction func _edit_name(_ sender: Any) {
        AppDelegate.curr_login.firstName = _edit_name_field.text!
    }
    @IBAction func _edit_name_2(_ sender: Any) {
        AppDelegate.curr_login.lastName = _edit_last_name.text!
    }
    
    @IBAction func doneButton(_ sender: Any) {
        AppDelegate.curr_login.picture = profilePicView.image!
        AppDelegate.curr_login.bio = _edit_bio.text
        AppDelegate.curr_login.firstName = _edit_name_field.text!
        AppDelegate.curr_login.lastName = _edit_last_name.text!
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self._edit_bio.delegate = self
        _edit_name_field.text = AppDelegate.curr_login.firstName
        _edit_last_name.text = AppDelegate.curr_login.lastName
        _edit_bio.text = AppDelegate.curr_login.bio
        profilePicView.image = AppDelegate.curr_login.picture
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
        AppDelegate.curr_login.bio = _edit_bio.text!
    }
    
    @IBAction func importImageButton(_ sender: Any) {
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
            profilePicView.image = image
        }
        else{
            //error
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
