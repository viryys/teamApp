//
//  ContactsListTableViewController.swift
//  teamApp
//
//  Created by  Vadim Tatarchuk on 06.11.2020.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    var personContact = PersonContact.getContact()
    private(set) var contacts: [String] = []
    
    //  MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "showDetail" else { return }
        
        let detailInfoContactVS = segue.destination as! DetailInfoContactViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailInfoContactVS.person = personContact[indexPath.row]
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        let addContactVC = segue.source as! AddContactViewController
        let newEllement = addContactVC.myPerson
        personContact.append(newEllement)
    }
}

extension ContactsListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personContact.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        
        let person = personContact[indexPath.row]
        
        cell.textLabel?.text = person.name
        cell.detailTextLabel?.text = person.sureName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            personContact.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
}

extension ContactsListTableViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

