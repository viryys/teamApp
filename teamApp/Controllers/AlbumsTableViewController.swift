//
//  AlbumsTableViewController.swift
//  teamApp
//
//  Created by  Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumsTableViewController: UITableViewController {
    
    var artistWithAlbums = Album.createDataAlbum().sorted {  $1.artist > $0.artist  }
    
    var artists = Artist.getArtists().sorted {  $1.name > $0.name  }
    let yearsAlbums = AlbumDataManager.shared.yearsOfAlbum
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Albums"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        artists.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        artists[section].albums.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        artists[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellAlbum", for: indexPath) as! AlbumTableViewCell
        
        let currentAlbum = artists[indexPath.section].albums[indexPath.row]
        cell.albumCellLabel.text = currentAlbum.nameAlbum
        cell.infoOfAlbumCellLabel.text = currentAlbum.descrOnAlbum
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            artists[indexPath.section].albums.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let movevedAlbum = artists[sourceIndexPath.section].albums.remove(at: sourceIndexPath.row)
        artists[destinationIndexPath.section].albums.insert(movevedAlbum, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "showDetails" else { return }
        
        let detailsVC = segue.destination as! AlbumDetailsViewController
        let indexPath = tableView.indexPathForSelectedRow!
        detailsVC.album = artists[indexPath.section].albums[indexPath.row]
        detailsVC.artist = artists[indexPath.section]
    }
    
    // MARK: - IBActions
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        
        let addNewElementVC = segue.source as! AlbumAddNewElementTableViewController        
        let newElement = addNewElementVC.newAlbum
        
        artists.append(newElement)
        tableView.reloadData()
    }
}

