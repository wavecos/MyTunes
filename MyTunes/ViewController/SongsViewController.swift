//
//  SongsViewController.swift
//  MyTunes
//
//  Created by onix on 5/18/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit
import SDWebImage

class SongsViewController: UITableViewController {
  
  var songs = [Song]()
  var songSelected : Song?
  
  let myTunesAPIClient = MyTunesAPIClient()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.registerNib(UINib(nibName: "SongCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "SongCell")
    
    self.myTunesAPIClient.delegate = self
    
    self.myTunesAPIClient.getSongs()
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "showSong" {
      let songDetailVC = segue.destinationViewController as! SongDetailViewController
      
      let buttonBack = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
      
      self.navigationController?.navigationBar.topItem?.backBarButtonItem = buttonBack
      
      
      songDetailVC.song = self.songSelected
    }
    
  }
  
}

extension SongsViewController : UITableViewDataSource {
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.songs.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("SongCell", forIndexPath: indexPath) as! SongCell
    
    let song = self.songs[indexPath.row]
    
    cell.songNameLabel.text = song.songInformation()
    cell.albumImageView.sd_setImageWithURL(song.imageUrl, placeholderImage: nil)
    
    return cell
  }
}

extension SongsViewController : UITableViewDelegate {
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    self.songSelected = self.songs[indexPath.row]
    
    self.performSegueWithIdentifier("showSong", sender: self)
  }
  
}


extension SongsViewController : MyTunesAPIDelegate {
  
  func songsReceived(songs: [Song]) {
    self.songs = songs
    self.tableView.reloadData()
  }
  
}

