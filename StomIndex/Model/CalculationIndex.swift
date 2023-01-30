//
//  CalculationIndex.swift
//  StomIndex
//
//  Created by c7j on 28.12.2022.
//

import Foundation
import UIKit

func calculateIndex(Button11: UIButton, Button16:UIButton, Button26: UIButton, Button31: UIButton, Button36: UIButton, Button46: UIButton, typeOfCalculation: String) -> Float {
    
    var indexTooth: [Int : Float] = [11:0, 16:0, 26:0, 31:0, 36:0, 46:0]
    var sumIndex: Float = 0
    
    switch typeOfCalculation{
    case "plaque":
        indexTooth[11] = plaqueConverter (indexPlaque: Button11.title(for: UIControl.State.normal) ?? "")
        indexTooth[16] = plaqueConverter (indexPlaque: Button16.title(for: UIControl.State.normal) ?? "")
        indexTooth[26] = plaqueConverter (indexPlaque: Button26.title(for: UIControl.State.normal) ?? "")
        indexTooth[31] = plaqueConverter (indexPlaque: Button31.title(for: UIControl.State.normal) ?? "")
        indexTooth[36] = plaqueConverter (indexPlaque: Button36.title(for: UIControl.State.normal) ?? "")
        indexTooth[46] = plaqueConverter (indexPlaque: Button46.title(for: UIControl.State.normal) ?? "")
    case "tartar":
        indexTooth[11] = tartarConverter (indexTartar: Button11.title(for: UIControl.State.normal) ?? "")
        indexTooth[16] = tartarConverter (indexTartar: Button16.title(for: UIControl.State.normal) ?? "")
        indexTooth[26] = tartarConverter (indexTartar: Button26.title(for: UIControl.State.normal) ?? "")
        indexTooth[31] = tartarConverter (indexTartar: Button31.title(for: UIControl.State.normal) ?? "")
        indexTooth[36] = tartarConverter (indexTartar: Button36.title(for: UIControl.State.normal) ?? "")
        indexTooth[46] = tartarConverter (indexTartar: Button46.title(for: UIControl.State.normal) ?? "")
    case "paint":
        indexTooth[11] = paintedConverter (indexPaint: Button11.title(for: UIControl.State.normal) ?? "")
        indexTooth[16] = paintedConverter (indexPaint: Button16.title(for: UIControl.State.normal) ?? "")
        indexTooth[26] = paintedConverter (indexPaint: Button26.title(for: UIControl.State.normal) ?? "")
        indexTooth[31] = paintedConverter (indexPaint: Button31.title(for: UIControl.State.normal) ?? "")
        indexTooth[36] = paintedConverter (indexPaint: Button36.title(for: UIControl.State.normal) ?? "")
        indexTooth[46] = paintedConverter (indexPaint: Button46.title(for: UIControl.State.normal) ?? "")
    case "gingival":
        indexTooth[11] = gingivalConverter (indexGingival: Button11.title(for: UIControl.State.normal) ?? "")
        indexTooth[16] = gingivalConverter (indexGingival: Button16.title(for: UIControl.State.normal) ?? "")
        indexTooth[26] = gingivalConverter (indexGingival: Button26.title(for: UIControl.State.normal) ?? "")
        indexTooth[31] = gingivalConverter (indexGingival: Button31.title(for: UIControl.State.normal) ?? "")
        indexTooth[36] = gingivalConverter (indexGingival: Button36.title(for: UIControl.State.normal) ?? "")
        indexTooth[46] = gingivalConverter (indexGingival: Button46.title(for: UIControl.State.normal) ?? "")
    default: print("Error: incorrect input data")
        
    }
    
    for index in indexTooth.values {
        sumIndex += index
    }
    
    return sumIndex / 6
}
