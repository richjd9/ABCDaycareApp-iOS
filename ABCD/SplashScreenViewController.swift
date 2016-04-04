//
//  SplashScreenViewController.swift
//  ABCD
//
//  Created by Fer on 4/3/16.
//  Copyright © 2016 John Russell. All rights reserved.
//

import UIKit
import VideoSplashKit


class SplashScreenViewController: VideoSplashViewController {


  

  private var firstAppear = true
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("SplashVideo", ofType: "mp4")!)
    self.videoFrame = view.frame
    self.fillMode = .ResizeAspectFill
    self.alwaysRepeat = true
    self.sound = true
    self.startTime = 72.0
    self.duration = 10.0
    self.alpha = 0.7
    self.backgroundColor = UIColor.blackColor()
    self.contentURL = url
    self.restartForeground = true
    
    NSTimer.scheduledTimerWithTimeInterval(10.0, target: self, selector: #selector(SplashScreenViewController.timeToMoveOn), userInfo: nil, repeats: false)

  }
  func timeToMoveOn() {
    self.performSegueWithIdentifier("mainViewController", sender: self)
  }
}