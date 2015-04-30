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
        var modalController = ModalController(nibName: "ModalController", bundle: nil)
        
        presentViewController(modalController, animated: true, completion: nil)
    }
}

