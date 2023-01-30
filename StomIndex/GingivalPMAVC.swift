//
//  GingivalPMAVC.swift
//  StomIndex
//
//  Created by c7j on 02.01.2023.
//

import UIKit

class GingivalPMAVC: UIViewController {

    
    @IBOutlet weak var inflammationNo: UITextField!
    @IBOutlet weak var inflammationPapilla: UITextField!
    @IBOutlet weak var inflammationPapillaGum: UITextField!
    @IBOutlet weak var inflammationMarginalAndAlveola: UITextField!
    
    @IBOutlet weak var resultGingivalPMAlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func iflammationNoEdit(_ sender: Any) {
        checkValueLabel(textLabel: inflammationNo)
    }
    
    @IBAction func inflammationPapillaEdit(_ sender: Any) {
        checkValueLabel(textLabel: inflammationPapilla)
    }
    
    @IBAction func inflammationPapillaGumEdit(_ sender: Any) {
        checkValueLabel(textLabel: inflammationPapillaGum)
    }
    
    @IBAction func inflammationMarginalAndAlveolaEdit(_ sender: Any) {
        checkValueLabel(textLabel: inflammationMarginalAndAlveola)
    }
    
    @IBAction func didTapGingivalPMAResult(_ sender: Any) {
    
        checkValueLabel(textLabel: inflammationNo)
        checkValueLabel(textLabel: inflammationPapilla)
        checkValueLabel(textLabel: inflammationPapillaGum)
        checkValueLabel(textLabel: inflammationMarginalAndAlveola)
        
        let allTooth: Float = convertTextLabelToFloat(textLabel: inflammationNo, ball: 1) +
        convertTextLabelToFloat(textLabel: inflammationPapilla, ball: 1) +
        convertTextLabelToFloat(textLabel: inflammationPapillaGum, ball: 1) +
        convertTextLabelToFloat(textLabel: inflammationMarginalAndAlveola, ball: 1)
        
        let allIndex: Float = convertTextLabelToFloat(textLabel: inflammationNo, ball: 0) +
        convertTextLabelToFloat(textLabel: inflammationPapilla, ball: 1) +
        convertTextLabelToFloat(textLabel: inflammationPapillaGum, ball: 2) +
        convertTextLabelToFloat(textLabel: inflammationMarginalAndAlveola, ball: 3)
        
        if allTooth == 0 {
            resultGingivalPMA(resultIndex: 0, resultLabel: resultGingivalPMAlabel)
        } else {
            let result: Float = (allIndex / (allTooth * 3)) * 100

            resultGingivalPMA(resultIndex: result, resultLabel: resultGingivalPMAlabel)
        }
        
        
    }
}
