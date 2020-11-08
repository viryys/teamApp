//
//  Album.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

struct Artist {
    let name: String
    let shortInfo: String
    var albums: [AlbumNew]
}

extension Artist {
    static func getArtists() -> [Artist] {
        var artists: [Artist] = []
        
        let dataArtists = AlbumDataManager.shared.artistsAlbums
        let shortInfoArtists: [String: String] = AlbumDataManager.shared.shortInfo
        let yearsOfAlbum: [String: String] = AlbumDataManager.shared.yearsOfAlbum
        let descrOnAlbum: [String: String] = AlbumDataManager.shared.descrOnAlbum
        
        dataArtists.forEach {
            (keyArtist, valAlbums) in
            
            var albums: [AlbumNew] = []
            
            valAlbums.forEach {
                album in
                
                
                albums.append(AlbumNew(
                    artist: keyArtist,
                    nameAlbum: album,
                    isLike: false,
                    descrOnAlbum: descrOnAlbum[album] ?? "",
                    yearsOfAlbum: yearsOfAlbum[album] ?? ""
                ))
            }
            
            let artist = Artist(name: keyArtist, shortInfo: shortInfoArtists[keyArtist] ?? "Not found", albums: albums)
            
            artists.append(artist)
        }
        
        return artists
    }
}

struct AlbumNew {
    let artist: String
    let nameAlbum: String
    var isLike: Bool
    let descrOnAlbum: String
    let yearsOfAlbum: String
}


struct Album {
    let artist: String
    var nameAlbum: [String]
    var isLike: Bool
    let shortInfo: String
//    let descrOnAlbum: String
//    let yearsOfAlbum: String

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
