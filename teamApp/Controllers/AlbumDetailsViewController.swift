//
//  AlbumDetailsViewController.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumDetailsViewController: UIViewController {

    var album: AlbumNew!
    var artist: Artist!
    
    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var textInfoView: UITextView!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textInfoView.text = album.descrOnAlbum
        imageAlbum.image = UIImage(named: artist.name)
        navigationItem.backBarButtonItem?.title = "Back"
        setLabelToTitle(textLabel: artist.name)
    }
    
    private func setLabelToTitle(textLabel: String)  {
        let titleFont = UIFont.systemFont(ofSize: 30.0)
        let title = ""
        let titleSize = title.size(withAttributes: [.font: titleFont])
        
        let frame = CGRect(x: 0, y: 0, width: titleSize.width, height: 20.0)
        let titleLabel = UILabel(frame: frame)
        titleLabel.font = titleFont
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.text = textLabel
        navigationItem.titleView = titleLabel
    }
    
}
