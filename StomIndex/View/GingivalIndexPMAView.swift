//
//  GingivalIndexPMAView.swift
//  StomIndex
//
//  Created by c7j on 08.01.2023.
//

import Foundation
import UIKit

func resultGingivalPMA(resultIndex: Float, resultLabel: UILabel) {
    switch resultIndex{
    case 0:
        resultLabel.text = "Гингивит отсутствует"
    case 1...30:
        resultLabel.text = "Легкая степень тяжести гингивита - " + String(format: "%.1f", resultIndex) + "%"
    case 31...60:
        resultLabel.text = "Средняя степень тяжести гингивита - " + String(format: "%.1f", resultIndex) + "%"
    case 61...100:
        resultLabel.text = "Тяжелая степень гингивита - " + String(format: "%.1f", resultIndex) + "%"
    default:
        break
    }
}
