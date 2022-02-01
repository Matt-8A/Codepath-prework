//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Matthew Ochoa on 1/17/22.
//  Copyright © 2022 Matthew Ochoa. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var totalTip: UILabel!
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    @IBAction func tipCalculation(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        
        let tipControl = [0.15, 0.18, 0.2]
        let tip = bill * tipControl[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        
        totalTip.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        
        
        
        
    }
    
}

