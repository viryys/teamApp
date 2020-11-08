//
//  AlbumsTableViewController.swift
//  teamApp
//
//  Created by  Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumsTableViewController: UITableViewController {
    
    var artistWithAlbums = Album.createDataAlbum().sorted {  $1.artist > $0.artist  }
    let yearsAlbums = AlbumDataManager.shared.yearsOfAlbum
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Albums"
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
        //isLike[indexPath.section]?.append(indexPath.row)
        let currentAlbum = artistWithAlbums[indexPath.section].nameAlbum[indexPath.row]
        cell.albumCellLabel.text = currentAlbum
        
        for (key, value) in yearsAlbums {
            if key == currentAlbum {
                cell.infoOfAlbumCellLabel.text = value
                break
            }
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
        let ownerSection = sourceIndexPath.section
        if ownerSection == destinationIndexPath.section {
            artistWithAlbums[destinationIndexPath.section].nameAlbum.insert(movevedAlbum, at: destinationIndexPath.row)
            tableView.reloadData()
        } else {
            alertMessage("Внимание", messageAlert: "Нельзя перенести альбом другому исполнителю!\nАльбом будет перемещен в пределах исполнителя!")
            artistWithAlbums[sourceIndexPath.section].nameAlbum.insert(movevedAlbum, at: destinationIndexPath.row)
            tableView.reloadData()
        }
    }
        
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "showDetails" else { return }
        
        let detailsVC = segue.destination as! AlbumDetailsViewController
        let indexPath = tableView.indexPathForSelectedRow!
        detailsVC.indexPath = indexPath.row
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

extension AlbumsTableViewController {
    
    private func alertMessage(_ titleAlert: String, messageAlert: String) {
        let alertController = UIAlertController(title: titleAlert,
                                                message: messageAlert,
                                                preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}
