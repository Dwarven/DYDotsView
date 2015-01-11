//
//  ViewController.swift
//  DYDotsViewDemo-Swift
//
//  Created by Dwarven on 15/1/11.
//  Copyright (c) 2015年 Dwarven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dots = DYDotsView(frame: CGRectMake(0, 0, 300, 300))
        dots.backgroundColor = .clearColor()
        dots.dotsColor = .redColor()
        dots.startAnimating()
        dots.center = self.view.center
        self.view.addSubview(dots)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

