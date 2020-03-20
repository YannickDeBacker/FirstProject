//
//  AddGroupViewController.swift
//  TestProject
//
//  Created by Yannick De Backer on 20/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController {

    var newGroup = Group()
    var particpants : [User] = []
    
    @IBOutlet weak var groupNameTF: UITextField!
    
    @IBOutlet weak var groupParticipants: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addGroupPlayersTapped(_ sender: Any) {
        performSegue(withIdentifier: "addGroupToAddPlayers", sender: nil)
    }
    
    @IBAction func createGroupTapped(_ sender: Any) {
        // adding group name
        if let name = groupNameTF.text {
            newGroup.name = name
          // adding particpants
          //  if let players =
        }
    }
    
    /*
     var participants : [User] = []
        var scoreboard : [Int] = []
        var dateCreated = 0
        var name = ""
        var history : [Ride] = []
     */
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
