//
//  SecondViewController.swift
//  list
//
//  Created by Eduardo Cortez on 7/2/19.
//  Copyright © 2019 Farside 13. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var newTask: UITextField!
    @IBAction func addNewTask(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(newTask.text!)
            
            print(items)
            
        } else {
            
            items = [newTask.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        newTask.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

