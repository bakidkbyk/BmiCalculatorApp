//
//  CalculatorBrain.swift
//  BMI-Calculator-App
//
//  Created by Baki Dikbıyık on 22.03.2022.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBmiValue() -> String {
        
        let decimalTo = String(format: "%.1f", bmi?.value ?? 0.0)
        return decimalTo
        }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, color: UIColor.blue)
        }
        else if bmiValue < 24.5 {
            
            bmi = BMI(value: bmiValue, color: UIColor.yellow)
        }
        else {
            bmi = BMI(value: bmiValue, color: UIColor.red)

        }
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    
    
    
}
