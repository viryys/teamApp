//
//  DetailInfoContactViewController.swift
//  teamApp
//
//  Created by Руслан Битюков on 08.11.2020.
//

import UIKit

class DetailInfoContactViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var sureNAmeLAbel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: PersonContact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = person.name
        sureNAmeLAbel.text = person.sureName
        phoneLabel.text = person.phone

    }
    
    
    


}
