//
//  GroupsViewController.swift
//  TestProject
//
//  Created by Yannick De Backer on 20/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBAction func addGroupButton(_ sender: Any) {
        self.performSegue(withIdentifier: "groupsToAddGroup", sender: nil)
        
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        // possibility to add 'sure you want to log out alert'
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
