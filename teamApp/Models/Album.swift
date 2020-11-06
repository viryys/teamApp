//
//  Album.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

struct Album {
    let artist: String
    var nameAlbum: [String]
    var isLike: Bool    
    let shortInfo: String
}

extension Album {
    //func will return array with Artists and albums
    static func createDataAlbum() -> [Album] {
        var albums: [Album] = []
        
        let dataAlbum = AlbumDataManager.shared.artistsAlbums
        let shortInfo = AlbumDataManager.shared.shortInfo
        
        dataAlbum.forEach { (key, values) in
          
            for (keyInfo, infoOfArtist) in shortInfo {
                if key == keyInfo {
                    let album = Album(artist: key,
                                      nameAlbum: values,
                                      isLike: false,
                                      shortInfo: infoOfArtist)
                    albums.append(album)
                }
            }
        }
        return albums
    }
}
