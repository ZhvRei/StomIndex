//
//  ParodontalIndexPIModel.swift
//  StomIndex
//
//  Created by c7j on 24.01.2023.
//

import Foundation
import UIKit

func parodontalResultCounting(x0: UITextField, x1: UITextField, x2: UITextField, x4: UITextField, x6: UITextField, x8: UITextField) -> String {
    let countIndexParodontal: Float = convertTextLabelToFloat(textLabel: x0, ball: 1) + convertTextLabelToFloat(textLabel: x1, ball: 1) +
    convertTextLabelToFloat(textLabel: x2, ball: 1) + convertTextLabelToFloat(textLabel: x4, ball: 1) + convertTextLabelToFloat(textLabel: x6, ball: 1) +
    convertTextLabelToFloat(textLabel: x8, ball: 1)
    
    let summIndexParodontal: Float = convertTextLabelToFloat(textLabel: x1, ball: 1) + convertTextLabelToFloat(textLabel: x2, ball: 2) + convertTextLabelToFloat(textLabel: x4, ball: 4) + convertTextLabelToFloat(textLabel: x6, ball: 6) +
    convertTextLabelToFloat(textLabel: x8, ball: 8)
    
    let resultParodontalPI: Float = summIndexParodontal / countIndexParodontal
    
    var resultStringParodontal: String = "Результат: --- "
    
    switch resultParodontalPI{
    case 0:
        resultStringParodontal = "Оценка - " + String(format: "%.1f", resultParodontalPI) + "\rЗаболевания нет"
    case 0.1...1.0:
        resultStringParodontal = "Оценка - " + String(format: "%.1f", resultParodontalPI) + "\rНачальная и первая стадии заболевания"
    case 1.1...4.0:
        resultStringParodontal = "Оценка - " + String(format: "%.1f", resultParodontalPI) + "\rНаличие деструктивных изменений,\rхарактерных для 2-ой стадии заболевания"
    case 4.1...10.0:
        resultStringParodontal = "Оценка - " + String(format: "%.1f", resultParodontalPI) + "\r3-я стадия заболевания"
    default:
        break
    }
    
    return resultStringParodontal
}
