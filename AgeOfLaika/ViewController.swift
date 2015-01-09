//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Jonathan Yen on 1/8/15.
//  Copyright (c) 2015 DHDI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanAgeTextField: UITextField!
    
    @IBOutlet weak var dogAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogAgeButton(sender: UIButton) {
        
    
        let humanAgeNumber = humanAgeTextField.text.toInt()!
        let dogYears = 7
        dogAgeLabel.hidden = false
        dogAgeLabel.text = "Dog Years is " + "\(dogYears * humanAgeNumber)"
        humanAgeTextField.resignFirstResponder()
    
        
    }

}

