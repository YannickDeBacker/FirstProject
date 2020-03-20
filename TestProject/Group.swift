//
//  Group.swift
//  TestProject
//
//  Created by Yannick De Backer on 20/03/2020.
//  Copyright © 2020 Yannick De Backer. All rights reserved.
//

import Foundation

class Group {
    var participants : [User] = []
    var scoreboard : [Int] = []
    var dateCreated = 0
    var name = ""
    var history : [Ride] = []
}
