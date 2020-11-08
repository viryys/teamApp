//
//  QuizViewController.swift
//  teamApp
//
//  Created by  Vadim Tatarchuk on 06.11.2020.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    let userOne = Users.logInUserOne()
    let userTwo = Users.logInUserTwo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let startPageOfviewController = segue.destination as! startPageOfQuizTableViewController
        
        switch userName.text {
        case userOne.name:
            startPageOfviewController.user = Users.logInUserOne()
        case userTwo.name:
            startPageOfviewController.user = Users.logInUserTwo()
        default:  startPageOfviewController.user = Users.loginFalse()
        }
    }
    
    @IBAction func logInPresed() {
        
        guard (userName.text == userOne.name && password.text == userOne.password) ||
                (userName.text == userTwo.name && password.text == userTwo.password)
        else {showAlert(with: "Invalid login or password", and: "Please, enter correct login and password", textField: password)
            return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    @IBAction func showUserNames(_ sender: Any) {
        showAlert(with: "Ooops", and: "Your first name is \(userOne.name), your second name is \(userTwo.name)")
    }
    
    @IBAction func showUserPasswords(_ sender: Any) {
        showAlert(with: "Ooops", and: "Your first password is \(userOne.password), your second password is \(userTwo.password)")
    }
}

extension QuizViewController {
    private func showAlert(with title: String,
                           and message: String,
                           textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension QuizViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

