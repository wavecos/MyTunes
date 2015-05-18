//
//  ViewController.swift
//  MyTunes
//
//  Created by onix on 5/14/15.
//  Copyright (c) 2015 xiobit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let myTunesAPIClient = MyTunesAPIClient()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    println("Hola mundo")

    self.myTunesAPIClient.getSongs()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

