//
//  AlbumAddNewElementTableViewController.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumAddNewElementTableViewController: UITableViewController {

    var newAlbum = Album(artist: "", nameAlbum: [""], isLike: false, shortInfo: "")
    // MARK: - Outlets
    
    @IBOutlet weak var artistLabel: UITextField!
    @IBOutlet weak var descrLabel: UITextField!
    @IBOutlet weak var albumLabel: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateSaveButtonState()
    }

    // MARK: - self function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let artist = artistLabel.text ?? ""
        let album  = albumLabel.text ?? ""
        let descr = descrLabel.text ?? ""
        
        self.newAlbum = Album(artist: artist, nameAlbum: [album], isLike: false, shortInfo: descr)
        
    }
    
    private func updateSaveButtonState() {
        let artisttext = artistLabel.text ?? ""
        let albumtext = albumLabel.text ?? ""
        let descrttext = descrLabel.text ?? ""
        
        saveButton.isEnabled = !artisttext.isEmpty && !albumtext.isEmpty && !descrttext.isEmpty
    }
    
    // MARK: - Actions
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
        
    }
    
}
