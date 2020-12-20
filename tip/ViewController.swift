//
//  ViewController.swift
//  tip
//
//  Created by Luis Morfin on 12/15/20.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var billAmountTextField:
        UITextField!
    
    @IBOutlet weak var tipControl:
        UISegmentedControl!
    
    @IBOutlet weak var tipPercentageLabel:
        UILabel!
    
    @IBOutlet weak var totalLabel:
        UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
     //   billAmountTextField.becomeFirstResponder()
        billAmountTextField.delegate = self
        
        
        
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.10,0.15, 0.20,0.25]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f" ,tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
}

