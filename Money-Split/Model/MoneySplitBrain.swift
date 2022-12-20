//
//  MoneySplitBrain.swift
//  Money-Split
//
//  Created by Sahid Reza on 20/12/22.
//

struct MoneySplitBrain{
    
    var splitValue:Double = 0.0
    var splitNumberOfValue:Double = 0.0
    
    var split:Split?
    
   
    mutating func processbuttoTitleToNumber(value:String){
        
        let minusLastValue = String(value.dropLast(1))
        let valueConvertDouble = Double(minusLastValue)!
        splitValue = valueConvertDouble
        
    }
    
    mutating func getttingNumberOfPeoprle(_ value:Double){
        
        splitNumberOfValue = value
    
        
    }
    
    mutating func calculateBill(billTextFieldValue:String) {
        
        let tip = splitValue / 100
        let bill = Double(billTextFieldValue)
        let result = bill! * (1 + tip) / Double(5)
       // let finalResult = String(format: "%.2f", result)
        
        split = Split(splitValueOFMoney: result, splitBtween2Peple: splitNumberOfValue, splitPerCentage: splitValue)
        
       
        
        
    }
    
    
}
