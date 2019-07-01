//
//  ViewController.swift
//  Times Tables
//
//  Created by Eduardo Cortez on 6/30/19.
//  Copyright © 2019 Farside 13. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderChanged(_ sender: Any) {
        //slider.value
        label.text = String(Int(slider.value))
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row + 1))
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = String(Int(slider.value))
    }
}

