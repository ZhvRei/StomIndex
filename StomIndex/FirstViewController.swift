//
//  FirstViewController.swift
//  StomIndex
//
//  Created by c7j on 21.12.2022.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func didTapGoToCaries(_ sender: Any) {
        performSegue(withIdentifier: "goToCaries", sender: nil)
    }
    
    
    @IBAction func didTapGoToOrthodontic(_ sender: Any) {
        performSegue(withIdentifier: "goToOrthodontic", sender: nil)
    }
    
    @IBAction func didTapGoToParadont(_ sender: Any) {
        performSegue(withIdentifier: "gotoParadont", sender: nil)
    }
    
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
}
