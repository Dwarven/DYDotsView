//
//  ViewController.swift
//  DYDotsViewDemo-Swift
//
//  Created by Dwarven on 15/1/11.
//  Copyright (c) 2015 Dwarven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dots = DYDotsView(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        dots.numberOfDots = 5
//        dots.duration = 0.4
        dots.dotsColor = .red
        dots.startAnimating()
        dots.center = self.view.center
        self.view.addSubview(dots)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

