//
//  SongCell.swift
//  MyTunes
//
//  Created by onix on 5/18/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
  
  // Outlets
  @IBOutlet weak var albumImageView: UIImageView!
  
  @IBOutlet weak var songNameLabel: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}
