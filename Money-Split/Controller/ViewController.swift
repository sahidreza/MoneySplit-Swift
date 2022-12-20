//
//  ViewController.swift
//  Money-Split
//
//  Created by Sahid Reza on 18/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var moneySplitBrain = MoneySplitBrain()
    
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        tenPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        moneySplitBrain.processbuttoTitleToNumber(value: buttonTitle)
        
    }
    
    
    @IBAction func stepperValuChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = "\(sender.value)"
        moneySplitBrain.getttingNumberOfPeoprle(sender.value)
        
        
    }
    
    
    @IBAction func CalculatedPressed(_ sender: UIButton) {
        
        if billTextField.text != "" {
            
            moneySplitBrain.calculateBill(billTextFieldValue: billTextField.text!)
            
            
            
            self.performSegue(withIdentifier: "GoToResultView", sender: nil)
            
        } else {
            
            print("Please Enter the Amount")
        }
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "GoToResultView" {
            
            let nextVC = segue.destination as! ResultViewController
            
            nextVC.splitValueOFMoney = moneySplitBrain.split?.splitValueOFMoney ?? 0.0
            nextVC.splitBtweenPeople = moneySplitBrain.split?.splitBtween2Peple ?? 0.0
            nextVC.splitPercenTage = moneySplitBrain.split?.splitPerCentage ?? 0.0
            
        }
        
    }
    
    
    
    
    
    
    
    
}






