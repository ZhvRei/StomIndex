//
//  GingivalIndexView.swift
//  StomIndex
//
//  Created by c7j on 31.12.2022.
//

import Foundation
import UIKit

let gingivalResultDescription: String = "Интервал GI по тяжести гингивита: \r0 - гингивит отсутствует \r0.1 - 1.0 - гингивит легкий;\r1.1 - 2.0 - гингивит средний;\r2.1 - 3.0 - гингивит тяжелый;"
// Описание зубных камней - Упрощенный индекс гигиены
let gingivalNorm = "Нет воспаления,\rнет гиперемии,\rнет кровотечения."
let gingivalEasy = "Легкая гиперемия,\rлегкий отек,\rнет кровоточивости"
let gingivalMiddle = "Гиперемия, отек,\rкровоточивость при\rзондировании/пальпации."
let gingivalHard = "Сильная гиперемия, отек, тенденция к спонтанному кровотечению"

func selectGingivalForTooth (ButtonGingival: UIButton) {
    ButtonGingival.titleLabel!.adjustsFontSizeToFitWidth = true
    ButtonGingival.menu = UIMenu(children: [
        UIAction(title: gingivalNorm, state: .on, handler: { (_) in }),
        UIAction(title: gingivalEasy, handler: { (_) in }),
        UIAction(title: gingivalMiddle, handler: { (_) in }),
        UIAction(title: gingivalHard, handler: { (_) in })
      ])
    
}
