//
//  FirstViewController.swift
//  Double App
//
//  Created by Eduardo Cortez on 7/3/19.
//  Copyright © 2019 Farside 13. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var enteredAge: UITextField!
    @IBOutlet weak var ageResults: UILabel!
    
    @IBAction func calculateAge(_ sender: Any) {
        let ageString = enteredAge.text
        let ageInt = Int(ageString!)! * 7
        
        ageResults.text = String(ageInt)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

