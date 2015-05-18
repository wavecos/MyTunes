//
//  SongDetailViewController.swift
//  MyTunes
//
//  Created by onix on 5/18/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit
import SDWebImage
import AVFoundation

class SongDetailViewController: UIViewController {
  
  // Outlet
  @IBOutlet weak var albumImageView: UIImageView!
  // Variables
  var song : Song?
  var audioPlayer : AVAudioPlayer?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  
    if let song = self.song {
      println("la cancion es : \(song.songName)")
      
      self.albumImageView.sd_setImageWithURL(song.imageUrl, placeholderImage: nil)
      
      
      playSong(song.previewUrl)
      
      
      
    }
    
    
  }
  
  func playSong(songURL : NSURL) {
    
    let songData = NSData(contentsOfURL: songURL)
    
    var error : NSError?
    
    self.audioPlayer = AVAudioPlayer(data: songData, error: &error)
    
    if let audioPlayer = self.audioPlayer {
      audioPlayer.numberOfLoops = 0
      
      audioPlayer.volume = 1
      
      audioPlayer.prepareToPlay()
      
      audioPlayer.play()
    }
  }
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
