//
//  File.swift
//  StomIndex
//
//  Created by c7j on 28.12.2022.
//

import Foundation
import UIKit

// Описание зубных камней - Упрощенный индекс гигиены
let tartarNo = "Нет камня"
let tartarNotMoreThanOneThird = "Наддесневой зубной камень на 1/3 поверхности зуба"
let tartarUpToTwoThirds = "Наддесневой зубной камень покрывает до 2/3 поверхности зуба"
let tartarTwoThirds = "Наддесневой зубной камень покрывает 2/3 поверхности зуба"

func selectTartarForTooth (ButtonIndex: UIButton) {
 
    ButtonIndex.menu = UIMenu(children: [
        UIAction(title: tartarNo, state: .on, handler: { (_) in }),
        UIAction(title: tartarNotMoreThanOneThird, handler: { (_) in }),
        UIAction(title: tartarUpToTwoThirds, handler: { (_) in }),
        UIAction(title: tartarTwoThirds, handler: { (_) in })
      ])
    
}
