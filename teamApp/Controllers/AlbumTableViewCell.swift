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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
