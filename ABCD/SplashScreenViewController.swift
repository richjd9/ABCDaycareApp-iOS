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
  
  @IBAction func signIn(sender: AnyObject) {
    continueToMainScreen()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
  
    //Getting the Splash Video Url.
    let mainBundle = NSBundle.mainBundle()
    let file = mainBundle.pathForResource("SplashVideo", ofType: "mp4")
    let url = NSURL.fileURLWithPath(file!)
    
    //Setting the Video Options
    self.videoFrame = view.frame
    self.fillMode = .ResizeAspectFill
    self.startTime = 72.0
    self.duration = 10.0
    self.alpha = 0.7
    self.backgroundColor = UIColor.blackColor()
    
    //Playing the video
    self.contentURL = url
    self.restartForeground = true
    
    //Timer to segue into mainscreen after 10 seconds.
    NSTimer.scheduledTimerWithTimeInterval(10.0, target: self, selector: #selector(SplashScreenViewController.continueToMainScreen), userInfo: nil, repeats: false)
    
  }
  
  //Helper Function to segue to mainScreen.
  func continueToMainScreen() {
    self.performSegueWithIdentifier("mainViewController", sender: self)
  }
}