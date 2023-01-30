//
//  GingivalIndexVC.swift
//  StomIndex
//
//  Created by c7j on 31.12.2022.
//

import UIKit

class GingivalIndexVC: UIViewController {
    
    var sumIndexGingival: Float = 0

    @IBOutlet weak var gingival11: UIButton!
    @IBOutlet weak var gingival16: UIButton!
    @IBOutlet weak var gingival24: UIButton!
    @IBOutlet weak var gingival31: UIButton!
    @IBOutlet weak var gingival36: UIButton!
    @IBOutlet weak var gingival44: UIButton!
    @IBOutlet weak var ResultGingival: UILabel!
    
    @IBOutlet weak var resultDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectGingivalForTooth(ButtonGingival: gingival11)
        selectGingivalForTooth(ButtonGingival: gingival16)
        selectGingivalForTooth(ButtonGingival: gingival24)
        selectGingivalForTooth(ButtonGingival: gingival31)
        selectGingivalForTooth(ButtonGingival: gingival36)
        selectGingivalForTooth(ButtonGingival: gingival44)
        
        resultDescription.text = gingivalResultDescription
    }

    @IBAction func didTapGingivalResult(_ sender: Any) {
        sumIndexGingival = calculateIndex(Button11: gingival11, Button16: gingival16, Button26: gingival24, Button31: gingival31, Button36: gingival36, Button46: gingival44, typeOfCalculation: "gingival")
        
        switch sumIndexGingival{
        case 0:
            ResultGingival.text = "Гингивит отсутствует, индекс = " + String(format: "%.1f", sumIndexGingival)
        case 0.1...1.0:
            ResultGingival.text = "Гингивит легкий, индекс = " + String(format: "%.1f", sumIndexGingival)
        case 1.1...2.0:
            ResultGingival.text = "Гингивит средний, индекс = " + String(format: "%.1f", sumIndexGingival)
        case 2.1...3.0:
            ResultGingival.text = "Гингивит тяжелый, индекс = " + String(format: "%.1f", sumIndexGingival)
        default:
            break
        }
    }
    
}
