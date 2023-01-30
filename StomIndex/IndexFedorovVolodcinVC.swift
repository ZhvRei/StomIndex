//
//  IndexFedorovVolodcinVC.swift
//  StomIndex
//
//  Created by c7j on 21.12.2022.
//

import UIKit
import Foundation

class IndexFedorovVolodcinVC: UIViewController {

    
    @IBOutlet weak var tooth31: UIButton!
    @IBOutlet weak var tooth32: UIButton!
    @IBOutlet weak var tooth33: UIButton!
    @IBOutlet weak var tooth41: UIButton!
    @IBOutlet weak var tooth42: UIButton!
    @IBOutlet weak var tooth43: UIButton!
    
    @IBOutlet weak var result: UILabel!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        result.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        
        selectIndexForTooth(ButtonIndex: tooth31)
        selectIndexForTooth(ButtonIndex: tooth32)
        selectIndexForTooth(ButtonIndex: tooth33)
        selectIndexForTooth(ButtonIndex: tooth41)
        selectIndexForTooth(ButtonIndex: tooth42)
        selectIndexForTooth(ButtonIndex: tooth43)
    }
    
    @IBAction func didTapResultIndex(_ sender: Any) {
        let tooth31index: Float = paintedConverter (indexPaint: tooth31.title(for: UIControl.State.normal) ?? "")
        let tooth32index: Float = paintedConverter (indexPaint: tooth32.title(for: UIControl.State.normal) ?? "")
        let tooth33index: Float = paintedConverter (indexPaint: tooth33.title(for: UIControl.State.normal) ?? "")
        let tooth41index: Float = paintedConverter (indexPaint: tooth41.title(for: UIControl.State.normal) ?? "")
        let tooth42index: Float = paintedConverter (indexPaint: tooth42.title(for: UIControl.State.normal) ?? "")
        let tooth43index: Float = paintedConverter (indexPaint: tooth43.title(for: UIControl.State.normal) ?? "")
        
        var sumIndex: Float = tooth31index+tooth32index+tooth33index+tooth41index+tooth42index+tooth43index
        sumIndex = sumIndex / 6
     
        switch sumIndex{
        case 0...1.5:
            result.text = "Уровень гигиены: Хороший, \r индекс = " + String(format: "%.1f", sumIndex)
        case 1.6...2.0:
            result.text = "Уровень гигиены: Удовлетворительный, \r индекс = " + String(format: "%.1f", sumIndex)
        case 2.1...2.5:
            result.text = "Уровень гигиены: Неудовлетворительный, \r индекс = " + String(format: "%.1f", sumIndex)
        case 2.6...3.4:
            result.text = "Уровень гигиены: Плохой, \r индекс = " + String(format: "%.1f", sumIndex)
        case 3.5...5.0:
            result.text = "Уровень гигиены: Очень плохой, \r индекс = " + String(format: "%.1f", sumIndex)
        default:
            break
        }
    }

}
