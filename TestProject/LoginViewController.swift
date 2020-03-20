//
//  ViewController.swift
//  TestProject
//
//  Created by Yannick De Backer on 19/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginMode = true
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var upperButton: UIButton!
    
    @IBOutlet weak var lowerButton: UIButton!
    
    @IBAction func upperTapped(_ sender: Any) {
        
        if loginMode {
            // login
            
        } else {
            // sign-up
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

