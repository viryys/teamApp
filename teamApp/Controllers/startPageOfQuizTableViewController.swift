//
//  starPageOfQuizTableViewController.swift
//  teamApp
//
//  Created by Alex on 08.11.2020.
//

import UIKit

class startPageOfQuizTableViewController: UIViewController {

    @IBOutlet var userNameLog: UILabel!
    
    var user: Users!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLog.text = "Welcome, \(user.name)"
        
    }

    // MARK: - Table view data source

 
    

}
