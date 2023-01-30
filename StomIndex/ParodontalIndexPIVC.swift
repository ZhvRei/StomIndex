//
//  ParodontalIndexPIVC.swift
//  StomIndex
//
//  Created by c7j on 13.01.2023.
//

import UIKit

class ParodontalIndexPIVC: UIViewController {

    @IBOutlet weak var parodontalPILabelNo: UILabel!
    @IBOutlet weak var parodontalPILabelEasyGingivit: UILabel!
    @IBOutlet weak var parodontalPILabelGingivit: UILabel!
    @IBOutlet weak var parodontalPILabelToothIsStable: UILabel!
    @IBOutlet weak var parodontalPIGingivitLabelWithPocket: UILabel!
    @IBOutlet weak var parodontalPILabelTissueDestruction: UILabel!
    
    @IBOutlet weak var parodontalPINo: UITextField!
    @IBOutlet weak var parodontalPIEasyGingivit: UITextField!
    @IBOutlet weak var parodontalPIGingivit: UITextField!
    @IBOutlet weak var parodontalPIToothStable: UITextField!
    @IBOutlet weak var parodontalPIWithPocket: UITextField!
    @IBOutlet weak var parodontalPITissueDestruction: UITextField!
    
    @IBOutlet weak var parodontalPIResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parodontalPILabelNo.text = parodontalPINoText
        parodontalPILabelEasyGingivit.text = parodontalPIEasyGingivitText
        parodontalPILabelGingivit.text = parodontalPIGingivitText
        parodontalPILabelToothIsStable.text = parodontalPIToothIsStableText
        parodontalPIGingivitLabelWithPocket.text = parodontalPIGingivitWithPocketText
        parodontalPILabelTissueDestruction.text = parodontalPITissueDestructionText
    }
    
    @IBAction func parodontalPINoEdit(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPINo)
    }
    
    @IBAction func parodontalPIEasyGingivitEdit(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPIEasyGingivit)
    }
    
    @IBAction func parodontalPIGingivitEdit(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPIGingivit)
    }
    
    @IBAction func parodontalPIToothStableEdit(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPIToothStable)
    }
    
    @IBAction func parodontalPIWithPocketEdit(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPIWithPocket)
    }
    
    @IBAction func parodontalPITissueDestruction(_ sender: Any) {
        checkValueLabel(textLabel: parodontalPITissueDestruction)
    }
    
    
    @IBAction func didTapParodontalPIResult(_ sender: Any) {
        parodontalPIResult.text = parodontalResultCounting(x0: parodontalPINo, x1: parodontalPIEasyGingivit, x2: parodontalPIGingivit, x4: parodontalPIToothStable, x6: parodontalPIWithPocket, x8: parodontalPITissueDestruction)
    }
    
    
    
}
