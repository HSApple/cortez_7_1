//
//  ViewController.swift
//  Egg Timer
//
//  Created by Eduardo Cortez on 6/30/19.
//  Copyright © 2019 Farside 13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var isRunning = false
    var clock = 210

    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            clockLabel.text = String(clock)
        } else {
            timer.invalidate()
            isRunning = false
        }
    }
    
    @IBOutlet weak var clockLabel: UILabel!
    
    @IBAction func pauseTimer(_ sender: Any) {
        if isRunning {
            timer.invalidate()
            isRunning = false
        }
    }
    
    @IBAction func startTimer(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    
    @IBAction func decreaseByTen(_ sender: Any) {
        if clock >= 10 {
            clock -= 10
            clockLabel.text = String(clock)
        }
    }
    
    @IBAction func increaseByTen(_ sender: Any) {
        clock += 10
        clockLabel.text = String(clock)
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        clock = 210
        clockLabel.text = String(clock)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clockLabel.text = String(clock)
    }


}

