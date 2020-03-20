//
//  ViewController.swift
//  TestProject
//
//  Created by Yannick De Backer on 19/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    var loginMode = true
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var upperButton: UIButton!
    
    @IBOutlet weak var lowerButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func upperTapped(_ sender: Any) {
        if let email = emailTextField.text {
            if let password = passwordTextField.text {
                if loginMode {
                    // login
                    Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                        if let error = error {
                            print(error)
                        } else {
                            print("succesfull sign-in of \(user)")
                            // go to next screen
                            self.performSegue(withIdentifier: "loginToGroups", sender: nil)
                        }
                    }
                    
                } else {
                    // sign-up
                    Auth.auth().createUser(withEmail: email, password: password) {
                        authResult, error in
                        if let error = error {
                            print(error)
                        } else{
                            print("sign-up successful")
                            // go to next screen
                            self.performSegue(withIdentifier: "loginToGroups", sender: nil)
                        }
                    }
                }
            }
        }
        
        
        
        
    }
    
    @IBAction func lowerTapped(_ sender: Any) {
        if loginMode {
            // switch to sign-up
            upperButton.setTitle("Sign-up", for: .normal)
            lowerButton.setTitle("Switch to Login", for: .normal)
            loginMode = false
        } else {
            // switch to login
            upperButton.setTitle("Login", for: .normal)
            lowerButton.setTitle("Switch to Sign-up", for: .normal)
            loginMode = true
        }
    }
    
}

