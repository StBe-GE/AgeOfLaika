//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by STEFAN BEHRENDT on 31.03.15.
//  Copyright (c) 2015 DSP-Partners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ManYearsFromTextField: UITextField!
    
    @IBOutlet weak var DogYearsOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertToDogYearsButtonPressed(sender: AnyObject) {
        
        let integerAgeFromTextField = ManYearsFromTextField.text.toInt()!
        let AgeOffset = 7
        DogYearsOutput.hidden = false
        DogYearsOutput.text = "\(integerAgeFromTextField * AgeOffset)" + " Dog Years"
        
        
    
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: AnyObject) {
        
        let stringFromTextField = ManYearsFromTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        
        else {
            realDogYears = doubleFromTextField * 10.5
            
        }
 mac mini        DogYearsOutput.text = "\(realDogYears)" + " Real Human Years"

}
}
