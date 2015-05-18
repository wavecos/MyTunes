//
//  MyTunesAPIClient.swift
//  MyTunes
//
//  Created by onix on 5/14/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol MyTunesAPIDelegate {
  func songsReceived(songs : [Song])
}

class MyTunesAPIClient {
  
  var delegate : MyTunesAPIDelegate?
  
  func getSongs() {
  
    Alamofire.request(.GET, "https://itunes.apple.com/search?term=beatles&entity=song&limit=5", parameters: nil, encoding: ParameterEncoding.URL)
      .responseJSON { (request, response, jsonData, error) in
        
        if error == nil {
          if jsonData != nil  {
            let json = JSON(jsonData!)
            let songs = Song.songsByJSON(json["results"])
            
            self.delegate?.songsReceived(songs)
            
          }
          
        }
    }
    
  }
  
}
