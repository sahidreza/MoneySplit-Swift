//
//  ResultViewController.swift
//  Money-Split
//
//  Created by Sahid Reza on 20/12/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingLabel: UILabel!
    
    var splitValueOFMoney = 0.0
    var splitBtweenPeople = 0.0
    var splitPercenTage = 0.0
    
     override func viewDidLoad() {
        super.viewDidLoad()
       
         totalLabel.text = String(format: "%.2f", splitValueOFMoney)
         
         let stringConvertedSplitbtweenPeople = String(format: "%.0f", splitBtweenPeople)
         let stringCOnvertesSplitPercenTage = String(format: "%.0f", splitPercenTage)
         
         settingLabel.text = "Split between \(stringConvertedSplitbtweenPeople) people, with \(stringCOnvertesSplitPercenTage)% tip."
        
    }
    
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
   

}
