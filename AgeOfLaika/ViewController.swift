//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ngac Duy Anh on 10/19/15.
//  Copyright © 2015 Ngac Duy Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInHumanYearsTxtFld: UITextField!
    @IBOutlet weak var humanYearsLbl: UILabel!
    @IBOutlet weak var warningLbl: UILabel!
    @IBOutlet weak var dogYearsLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertBtnPressed(sender: UIButton) {
        let dogYears : Double = 4
        let humanYears = Double(ageInHumanYearsTxtFld.text!)
        var inDogYears : Double
        
        if humanYears == nil {
            warningLbl.hidden = false
            warningLbl.text = "Please enter the age ..."
        } else {
            warningLbl.hidden = true
            
            if humanYears == 1 {
                inDogYears = 10.5
            } else if humanYears == 2 {
                inDogYears = 21
            } else {
                inDogYears = 21 + (humanYears! - 2) * dogYears
            }
            
            ageInHumanYearsTxtFld.resignFirstResponder()
            ageInHumanYearsTxtFld.text = ""
            
            humanYearsLbl.hidden = false
            dogYearsLbl.hidden = false
            
            humanYearsLbl.text = "\(humanYears!)"
            dogYearsLbl.text = "\(inDogYears)"
        }
        
    }

}

