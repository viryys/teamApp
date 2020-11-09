//
//  starPageOfQuizTableViewController.swift
//  teamApp
//
//  Created by Alex on 08.11.2020.
//

import UIKit

class startPageOfQuizTableViewController: UIViewController {

    @IBOutlet var userNameLog: UILabel!
    @IBOutlet weak var startQuizButton: UIButton!
    
    var currentUser: User!

    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userNameLog.text = "Welcome🖐, \(currentUser.name)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as! UINavigationController
        let startQuizVC = nav.topViewController as! QuestionsViewController
        
        startQuizVC.currentUser = currentUser
        
    }
    
    //@IBAction override func unwind(segue: UIStoryboardSegue) {}
    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
}

extension startPageOfQuizTableViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
