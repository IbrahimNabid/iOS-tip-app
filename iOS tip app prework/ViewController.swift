//
//  ViewController.swift
//  iOS tip app prework
//
//  Created by Ibrahim Nabid on 10/16/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitValue: UIStepper!
    @IBOutlet weak var splitNumber: UILabel!
    @IBOutlet weak var splitTotal: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let sValue = Int(splitValue.value)
        let sTotal = total/Double(sValue)
                
        splitTotal.text = String(format: "$%.2f", sTotal)
        splitNumber.text = String(format: "%2d%", sValue)
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    


}

