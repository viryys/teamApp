//
//  AlbumDetailsViewController.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumDetailsViewController: UIViewController {

    var album: Album!
    let descrAlbum = AlbumDataManager.shared.descrOnAlbum
    var indexPath: Int!
    
    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var textInfoView: UITextView!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textInfoView.text = findDescriptionAlbum()
        imageAlbum.image = UIImage(named: album.artist)
        navigationItem.backBarButtonItem?.title = "Back"
        setLabelToTitle(textLabel: album.artist)
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
    
    private func findDescriptionAlbum() -> String {
        var string = album.shortInfo
        
        for (key, value) in descrAlbum {            
            if key == album.nameAlbum[indexPath] {
                string = value
                return string
            }
        }
        return string
    }
    
}
