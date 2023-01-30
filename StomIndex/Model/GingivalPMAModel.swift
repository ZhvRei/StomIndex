//
//  GingivalPMAModel.swift
//  StomIndex
//
//  Created by c7j on 08.01.2023.
//

import Foundation
import UIKit

// функция для проверки вводимых значений
func checkValueLabel (textLabel: UITextField) {
    
    let fieldTextLabel: String = textLabel.text ?? "0"
    var fieldTextLabelInt: Int = 0
    
    if let fieldTextLabel = Int(fieldTextLabel) {
        fieldTextLabelInt = Int(fieldTextLabel)
    } else {
        textLabel.text = "0"
    }
    
    if fieldTextLabelInt>32 {
        textLabel.text = "32"
    }
}

// конвертация string значений из textLabel в Float 
func convertTextLabelToFloat (textLabel: UITextField, ball: Float) -> Float {
    let fieldTextLabel: String = textLabel.text ?? "0"
    var fieldTextLabelInt: Float = 0
    
    if let fieldTextLabel = Float(fieldTextLabel) {
        fieldTextLabelInt = Float(fieldTextLabel)
    }
    return fieldTextLabelInt * ball
}

