//
//  DentalPlaqueIndexView.swift
//  StomIndex
//
//  Created by c7j on 28.12.2022.
//

import Foundation
import UIKit

// Описание зубных налетов - Упрощенный индекс гигиены
let plaqueNo = "Нет налета"
let plaqueNotMoreThanOneThird = "Налет покрывает не более 1/3 поверхности зуба"
let plaqueUpToTwoThirds = "Налет покрывает до 2/3 поверхности зуба"
let plaqueTwoThirds = "Налет покрывает 2/3 поверхности зуба"

func selectPlaqueForTooth (ButtonIndex: UIButton) {
 
    ButtonIndex.menu = UIMenu(children: [
        UIAction(title: plaqueNo, state: .on, handler: { (_) in }),
        UIAction(title: plaqueNotMoreThanOneThird, handler: { (_) in }),
        UIAction(title: plaqueUpToTwoThirds, handler: { (_) in }),
        UIAction(title: plaqueTwoThirds, handler: { (_) in })
      ])
    
}
