//
//  ViewController.swift
//  Tipster
//
//  Created by Anubhav Saxena on 12/26/17.
//  Copyright © 2017 Anubhav Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var totalField: UITextField!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var currencySelector: UISegmentedControl!
    
    @IBOutlet weak var cursym1: UILabel!
    @IBOutlet weak var cursym2: UILabel!
    @IBOutlet weak var cursym3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipField.isUserInteractionEnabled = false
        totalField.isUserInteractionEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let amount = Double(amountField.text!) ?? 0
        let tip = amount * tipPercentages[tipSelector.selectedSegmentIndex]
        let total = amount + tip
        
        tipField.text = String(format: "%.2f", tip)
        totalField.text = String(format: "%.2f", total)
    }
    
}

