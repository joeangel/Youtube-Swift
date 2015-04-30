//
//  ViewController.swift
//  Youtube
//
//  Created by JoeAngel on 2015/4/30.
//  Copyright (c) 2015年 Fanily CO., LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    var videoItem: YoutubeVideo = YoutubeVideo();
    
/*
    var detailItem: YoutubeVideo? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
*/

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.configureView()
    }
    
    @IBAction func trigger() {
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureView() {
        println("configureView")
        // Update the user interface for the detail item.
        
        if let label = self.detailDescriptionLabel {
            label.text = videoItem.title as? String
            self.title = videoItem.title as? String
        }
        let idVideo = videoItem.id as? String
        var videoPlayerViewController: XCDYouTubeVideoPlayerViewController = XCDYouTubeVideoPlayerViewController(videoIdentifier: idVideo);
        videoPlayerViewController.presentInView(self.view);
        videoPlayerViewController.moviePlayer.controlStyle = MPMovieControlStyle.None
        videoPlayerViewController.moviePlayer.play()
        self.view.addSubview(videoPlayerViewController.view)
    }

}

