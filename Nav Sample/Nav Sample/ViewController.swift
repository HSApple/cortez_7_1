//
//  ViewController.swift
//  Nav Sample
//
//  Created by Eduardo Cortez on 6/30/19.
//  Copyright © 2019 Farside 13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()

    @IBAction func cameraPressed(_ sender: Any) {
        print("Camera pressed")
        timer.invalidate()
    }
    
    @objc func processTimer() {
        print("A second has passed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }


}

