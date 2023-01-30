//
//  ParodontalViewController.swift
//  PHPindex
//
//  Created by c7j on 21.12.2022.
//

import UIKit

class ParodontalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapGoToFedorovVolodkin(_ sender: Any) {
        performSegue(withIdentifier: "goToIndexFedorovVolodkinVC", sender: nil)
    }
    
    @IBAction func didTapGoToSimplifiedHygiene(_ sender: Any) {
        performSegue(withIdentifier: "goToSimplifiedHygieneIndexVC", sender: nil)
    }
    
    @IBAction func didTapGoToGingival(_ sender: Any) {
        performSegue(withIdentifier: "goToGingivalIndexVC", sender: nil)
    }
    
    @IBAction func didTapGoToGingivalPMA(_ sender: Any) {
        performSegue(withIdentifier: "goToGingivalPMAVC", sender: nil)
    }
    
    @IBAction func didTapGoToParadontalPI(_ sender: Any) {
        performSegue(withIdentifier: "goToParadontalPI", sender: nil)
    }
    
    @IBAction func unwindSegueToParodontalVC(segue: UIStoryboardSegue) {
        
    }
    
    
    
    
}
