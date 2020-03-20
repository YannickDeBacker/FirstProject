//
//  AddGroupViewController.swift
//  TestProject
//
//  Created by Yannick De Backer on 20/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController {

    @IBOutlet weak var groupNameTF: UITextField!
    
    @IBOutlet weak var groupParticipants: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addGroupPlayersTapped(_ sender: Any) {
        performSegue(withIdentifier: "addGroupToAddPlayers", sender: nil)
        
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
