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
        
        var dots = DYDotsView(frame: CGRectMake(0, 0, 300, 30))
        dots.numberOfDots = 5
//        dots.duration = 0.4
        dots.dotsColor = .redColor()
        dots.startAnimating()
        dots.center = self.view.center
        self.view.addSubview(dots)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

