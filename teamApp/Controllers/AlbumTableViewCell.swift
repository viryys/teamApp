//
//  AlbumTableViewCell.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    @IBOutlet weak var albumCellLabel: UILabel!
    @IBOutlet weak var infoOfAlbumCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .secondarySystemBackground
        infoOfAlbumCellLabel.font = .systemFont(ofSize: 14)
    }

}
