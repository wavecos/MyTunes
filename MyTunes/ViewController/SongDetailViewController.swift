//
//  SongDetailViewController.swift
//  MyTunes
//
//  Created by onix on 5/18/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit
import SDWebImage

class SongDetailViewController: UIViewController {
  
  // Outlet
  @IBOutlet weak var albumImageView: UIImageView!
  // Variables
  var song : Song?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  
    if let song = self.song {
      println("la cancion es : \(song.songName)")
      
      self.albumImageView.sd_setImageWithURL(song.imageUrl, placeholderImage: nil)
      
    }
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
