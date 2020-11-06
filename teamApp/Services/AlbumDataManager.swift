//
//  AlbumDataManager.swift
//  teamApp
//
//  Created by Sergei Posysaev on 06.11.2020.
//

class AlbumDataManager {
    static let shared = AlbumDataManager()
    
    let artistsAlbums = ["Sting": [ "The Dream of the Blue Turtles (1985)",
                   "Nothing Like the Sun (1987)",
                   "The Soul Cages (1991)",
                   "Ten Summoner's Tales (1993)",
                   "Mercury Falling (1996)",
                   "Brand New Day (1999)",
                   "Sacred Love (2003)",
                   "Songs from the Labyrinth (2006)",
                   "If on a Winter's Night... (2009)",
                   "Symphonicities (2010)",
                   "The Last Ship (2013)",
                   "57th & 9th (2016)",
                   "44/876 with Shaggy (2018)",
                   "My Songs (2019)",
                   "Duets (2020)",
                  "Joe Cocker",
                  "Queen"],
                   "Joe Cocker": ["With a Little Help from My Friends (1969)",
                                  "Joe Cocker! (1969)",
                                  "Joe Cocker (1972/EU: 1973)",
                                  "I Can Stand a Little Rain (1974)",
                                  "Jamaica Say You Will (1975)",
                                  "Stingray (1976)",
                                  "Luxury You Can Afford (1978)",
                                  "Sheffield Steel (1982)",
                                  "Civilized Man (1984)",
                                  "Cocker (1986)",
                                  "Unchain My Heart (1987)",
                                  "One Night of Sin (1989)",
                                  "Night Calls (1991/US: 1992)",
                                  "Have a Little Faith (1994)",
                                  "Organic (1996)",
                                  "Across from Midnight (1997)",
                                  "No Ordinary World (1999/US: 2000)",
                                  "Respect Yourself (2002)",
                                  "Heart & Soul (2004/US: 2005)",
                                  "Hymn for My Soul (2007/US: 2008)",
                                  "Hard Knocks (2010/US: 2012)",
                                  "Fire It Up (2012)"],
                   "Queen": ["Early Queen Tours (1970–1973)",
                             "Queen I Tour (1973–1974)",
                             "Queen II Tour (1974)",
                             "Sheer Heart Attack Tour (1974–1975)",
                             "A Night at the Opera Tour (1975–1976)",
                             "Summer Gigs 1976 (1976)",
                             "A Day at the Races Tour (1977)",
                             "News of the World Tour (1977–1978)",
                             "Jazz Tour (1978–1979)",
                             "Crazy Tour (1979)",
                             "The Game Tour (1980–1981)",
                             "Hot Space Tour (1982)",
                             "The Works Tour (1984–1985)",
                             "The Magic Tour (1986)",
                             "Queen + Paul Rodgers Tour (2005–2006)",
                             "Rock the Cosmos Tour (2008)",
                             "Queen + Adam Lambert Tour 2012 (2012)",
                             "Queen + Adam Lambert Tour 2014–2015 (2014–2015)",
                             "Queen + Adam Lambert 2016 Summer Festival Tour (2016)",
                             "Queen + Adam Lambert Tour 2017–2018 (2017–2018)",
                             "The Rhapsody Tour (2019–2021)"]]
    
    let shortInfo = ["Sting": "Born: Gordon Matthew Thomas Sumner, 2 October 1951 (age 69), Wallsend, Northumberland, England. Years active: 1971–present. Musical career - Genres: Rockpopnew wavepost-punkskareggaejazzworldsoft rock. Website: sting.com",
                     "Queen": "Origin: London, England. Genres: Rock. Website: queenonline.com . Members: Brian May, Roger Taylor. Past members: Freddie Mercury, John Deacon.",
                     "Joe Cocker": "Birth name: John Robert Cocker. Born: 20 May 1944, Sheffield, West Riding of Yorkshire, England. Died: 22 December 2014 (aged 70). Crawford, Colorado, United States. Genres: Rock, blues, soul, pop. Years active: 1961–2014. Website: www.cocker.com", ]
    
    private init() { }
}
