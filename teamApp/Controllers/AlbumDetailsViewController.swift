//
//  AlbumDetailsViewController.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumDetailsViewController: UIViewController {
    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var textInfoView: UITextView!
    @IBOutlet weak var yearAlbum: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artistInfoTextView: UITextView!
    
    var album: AlbumNew!
    var artist: Artist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabelToTitle(textLabel: "\(album.isLike ? "♥" : "♡") \(album.nameAlbum)")
        navigationItem.backBarButtonItem?.title = "Back"
        
        imageAlbum.image = UIImage(named: artist.name)
        textInfoView.text = album.descrOnAlbum
        yearAlbum.text = "Release year: \(album.yearsOfAlbum)"
        artistNameLabel.text = album.artist
        artistInfoTextView.text = artist.shortInfo
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
