//
//  AlbumDetailsViewController.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumDetailsViewController: UIViewController {

    var album: Album!
        
    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = album.shortInfo
        imageAlbum.image = UIImage(named: album.artist)
    }
    
}
