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

    @IBAction func convertToRealDogYearsPressed(sender: UIButton) {
        
        /* Refactoring this block of code to a single line
        let humanAgeNumberString = humanAgeTextField.text
        let humanAgeNumberIntOptional = humanAgeNumberString.toInt()
        let humanAgeNumberInt = humanAgeNumberIntOptional!
        */
        
        let humanAgeNumberInt = humanAgeTextField.text.toInt()!
        
        //let dogYearsBeforeTwoYears = 10.5
        //let dogYearsAfterTwoYears = 4
        var dogYears:Double
        
        if (humanAgeNumberInt <= 2) {
            dogYears = Double(humanAgeNumberInt) * 10.5
            dogAgeLabel.text = "Dog Years is " + "\(dogYears)"
            
        }
        else {
            
            var dogYearsBeforeTwoYearsCalc = 10.5 * 2
            var dogYearsAfterTwoYearsCalc = (humanAgeNumberInt - 2) * 4
            dogYears = dogYearsBeforeTwoYearsCalc + Double(dogYearsAfterTwoYearsCalc)
            
        }
        dogAgeLabel.text = "Dog Years is " + "\(dogYears)"
        dogAgeLabel.hidden = false
        humanAgeTextField.resignFirstResponder()
    }
}

