//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Efrain Pamatz on 3/8/21.
//  Copyright © 2021 Efrain Pamatz. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let user = usernameField.text!
        let pass = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: user, password: pass) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                self.passwordField.text = ""
            } else {
                print("Error: \(error?.localizedDescription ?? "???")")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                self.passwordField.text = ""
            } else {
                print("Error: \(error?.localizedDescription ?? "???")")
            }
        }

    }
    

}
