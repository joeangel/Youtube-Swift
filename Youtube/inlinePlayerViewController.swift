//
//  inlinePlayerViewController.swift
//  Youtube
//
//  Created by JoeAngel on 2015/4/30.
//  Copyright (c) 2015年 Fanily CO., LTD. All rights reserved.
//
// https://github.com/gbachik/wevo/blob/master/iPhone%20App/Wevo/Playlist.swift
//

import UIKit

class inlinePlayerViewController: UIViewController {

    @IBOutlet var videoContainerView: UIView!
    @IBOutlet var prepareToPlaySwitch: UISwitch!
    @IBOutlet var shouldAutoplaySwitch: UISwitch!
    
    var videoPlayerViewController: XCDYouTubeVideoPlayerViewController!
    
    @IBAction func load() {
        
        // http://stackoverflow.com/questions/24312760/swift-how-will-i-remove-all-the-subviews-of-a-view
        var x = NSUserDefaults.standardUserDefaults()
        
        //var videoIdentifier: String = NSUserDefaults.standardUserDefaults().objectForKey("VideoIdentifier") as! String
        var videoIdentifier: String = "EdeVaT-zZt4"
        self.videoPlayerViewController = XCDYouTubeVideoPlayerViewController(videoIdentifier: videoIdentifier)
        
        // event listener: https://gist.github.com/jacks205/2fc1d9ba0f2ded613440
        self.videoPlayerViewController.presentInView(self.videoContainerView)
        
        if self.prepareToPlaySwitch.on {
            self.videoPlayerViewController.moviePlayer.prepareToPlay()
        }
        
        self.videoPlayerViewController.moviePlayer.shouldAutoplay = self.shouldAutoplaySwitch.on
    }
    
    @IBAction func prepareToPlay(sender: UISwitch) {
        if sender.on {
            self.videoPlayerViewController.moviePlayer.prepareToPlay()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController() {
            self.videoPlayerViewController.moviePlayer.stop()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
