//
//  AlbumsTableViewController.swift
//  teamApp
//
//  Created by  Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumsTableViewController: UITableViewController {
    
    var artistWithAlbums = Album.createDataAlbum().sorted {  $1.artist > $0.artist  }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        artistWithAlbums.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        artistWithAlbums[section].nameAlbum.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        artistWithAlbums[section].artist
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellAlbum", for: indexPath) as! AlbumTableViewCell
        let currentAlbum = artistWithAlbums[indexPath.section].nameAlbum[indexPath.row]
        cell.albumCellLabel.text = currentAlbum
        if artistWithAlbums[indexPath.section].isLike {
            cell.infoOfAlbumCellLabel.text = "will listen"
        } else {
            cell.infoOfAlbumCellLabel.text = "will not listen"
        }
        return cell
    }
 
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            artistWithAlbums[indexPath.section].nameAlbum.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let movevedAlbum = artistWithAlbums[sourceIndexPath.section].nameAlbum.remove(at: sourceIndexPath.row)
        artistWithAlbums[destinationIndexPath.section].nameAlbum.insert(movevedAlbum, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let done = doneAction(at: indexPath)
        let favorite = favoriteAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [done, favorite])
        
    }
    
    func doneAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, complition) in
            self.artistWithAlbums[indexPath.section].nameAlbum.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            complition(true)
        }
        action.backgroundColor = .systemGreen
        action.image = UIImage(systemName: "checkmark.circle")
        return action
    }
    
    func favoriteAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "Likee") { (action, view, complition) in
            self.artistWithAlbums[indexPath.section].isLike = !self.artistWithAlbums[indexPath.section].isLike
            
            complition(true)
            
        }
        action.backgroundColor = artistWithAlbums[indexPath.section].isLike ? .systemPurple : .systemGray
        action.image = UIImage(systemName: "heart")
        return action
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "showDetails" else { return }
        let detailsVC = segue.destination as! AlbumDetailsViewController
        let indexPath = tableView.indexPathForSelectedRow!
        detailsVC.album = artistWithAlbums[indexPath.section]
    }
    
    // MARK: - IBActions
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        
        let addNewElementVC = segue.source as! AlbumAddNewElementTableViewController        
        let newElement = addNewElementVC.newAlbum
        
        artistWithAlbums.append(newElement)
        tableView.reloadData()
    }
}

