//
//  ViewController.swift
//  Youtube-Swift-Xib
//
//  Created by JoeAngel on 2015/4/30.
//  Copyright (c) 2015年 Fanily CO., LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Main"
    }
    
    func loadTemplate(){
        let view:UIView = UINib(nibName: "ViewController", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! UIView
        self.view.addSubview(view)
    }
    
    @IBAction func didTapModal() {
        var modalController:ModalController = ModalController(nibName: "ModalController", bundle: nil)
        self.navigationController?.presentViewController(modalController, animated: true, completion: nil)
        //presentViewController(modalController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func didTapVideo() {
        var modalController:inlinePlayerViewController = inlinePlayerViewController(nibName: "inlinePlayerViewController", bundle: nil)
        self.navigationController?.presentViewController(modalController, animated: true, completion: nil)
    }

}

