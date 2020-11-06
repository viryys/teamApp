//
//  Album.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

struct Album {
    let artist: String
    let nameAlbum: String
    var isLike: Bool
}

extension Album {
   //func returns array of Artists with albums
    static func createDataAlbum() {
        let dataAlbum = AlbumDataManager.shared.artistsAlbums
        
        
    }
    
}
