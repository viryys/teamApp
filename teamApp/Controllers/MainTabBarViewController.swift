//
//  MainTabBarViewController.swift
//  teamApp
//
//  Created by  Vadim Tatarchuk on 06.11.2020.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    //MusicAlbum
    let artistWithAlbums = ""

    override func viewDidLoad() {
        super.viewDidLoad()

       //MusicAlbum
        let albumTVC = viewControllers?.first as! AlbumsTableViewController
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}