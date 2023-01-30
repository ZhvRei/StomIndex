//
//  IndexToothView.swift
//  StomIndex
//
//  Created by c7j on 28.12.2022.
//

import Foundation
import UIKit

// Индексы гигиены Федорова - Володкиной
let paintedNo = "Окрашивание отсутствует"
let paintedQuarter = "Окрашивание ¼ поверхности зуба"
let paintedHalf = "Окрашивание ½ поверхности зуба"
let paintedThreeQuarters = "Окрашивание ¾ поверхности зуба"
let paintedFull = "Окрашивание всей поверхности зуба"

func selectIndexForTooth (ButtonIndex: UIButton) {
 
    ButtonIndex.menu = UIMenu(children: [
        UIAction(title: paintedNo, state: .on, handler: { (_) in }),
        UIAction(title: paintedQuarter, handler: { (_) in }),
        UIAction(title: paintedHalf, handler: { (_) in }),
        UIAction(title: paintedThreeQuarters, handler: { (_) in }),
        UIAction(title: paintedFull, handler: { (_) in })
      ])
    
}

