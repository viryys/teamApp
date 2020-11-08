//
//  AddContactViewController.swift
//  teamApp
//
//  Created by Руслан Битюков on 08.11.2020.
//

import UIKit

class AddContactViewController: UIViewController {
    
    var myPerson = PersonContact(name: "", sureName: "", phone: "")
    
    @IBOutlet var saveButton: UIBarButtonItem!
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var sureNameTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        testSaveButton()
    }
    
    func testSaveButton() {
        let name = nameTextField.text ?? ""
        let sureName = sureNameTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        
        saveButton.isEnabled = !name.isEmpty && !sureName.isEmpty && !phone.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let name = nameTextField.text ?? ""
        let sureName = sureNameTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        
        self.myPerson = PersonContact(name: name,
                                      sureName: sureName,
                                      phone: phone)
    }
 
    @IBAction func textChange() {
        testSaveButton()
    }
    
    @IBAction func doneButtonPressed() {
        dismiss(animated: true)
    }
}

    
