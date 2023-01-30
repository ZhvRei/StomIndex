//
//  SimplifiedHygieneIndexVC.swift
//  StomIndex
//
//  Created by c7j on 23.12.2022.
//

import UIKit



class SimplifiedHygieneIndexVC: UIViewController {

    var sumIndexPlaque: Float = 0
    var sumIndexTartar: Float = 0
    
    //аутлеты зубного НАЛЕТА по номерам зубов
    @IBOutlet weak var plaque11: UIButton!
    @IBOutlet weak var plaque16: UIButton!
    @IBOutlet weak var plaque26: UIButton!
    @IBOutlet weak var plaque31: UIButton!
    @IBOutlet weak var plaque36: UIButton!
    @IBOutlet weak var plaque46: UIButton!
    
    @IBOutlet weak var resultPlaque: UILabel!
    
    //аутлеты зубного КАМНЯ по номерам зубов
    @IBOutlet weak var tartar11: UIButton!
    @IBOutlet weak var tartar16: UIButton!
    @IBOutlet weak var tartar26: UIButton!
    @IBOutlet weak var tartar31: UIButton!
    @IBOutlet weak var tartar36: UIButton!
    @IBOutlet weak var tartar46: UIButton!
    
    @IBOutlet weak var resultTartar: UILabel!
    
    @IBOutlet weak var resultTartarAndPlaque: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // внутренности кнопок для зубного налета
        selectPlaqueForTooth(ButtonIndex: plaque11)
        selectPlaqueForTooth(ButtonIndex: plaque16)
        selectPlaqueForTooth(ButtonIndex: plaque26)
        selectPlaqueForTooth(ButtonIndex: plaque31)
        selectPlaqueForTooth(ButtonIndex: plaque36)
        selectPlaqueForTooth(ButtonIndex: plaque46)
        
        //внутренности кнопок для зубного камня
        selectTartarForTooth(ButtonIndex: tartar11)
        selectTartarForTooth(ButtonIndex: tartar16)
        selectTartarForTooth(ButtonIndex: tartar26)
        selectTartarForTooth(ButtonIndex: tartar31)
        selectTartarForTooth(ButtonIndex: tartar36)
        selectTartarForTooth(ButtonIndex: tartar46)
    }
    
    // функция подсчета индекса зубного налета
    @IBAction func didTapPlaqueResult(_ sender: Any) {
        
        sumIndexPlaque = calculateIndex(Button11: plaque11, Button16: plaque16, Button26: plaque26, Button31: plaque31, Button36: plaque36, Button46: plaque46, typeOfCalculation: "plaque")
        
        resultPlaque.text = "Результат: " + String(format: "%.1f", sumIndexPlaque)
        
    }
    
    
    @IBAction func didTapTartarResult(_ sender: Any) {

        sumIndexTartar = calculateIndex(Button11: tartar11, Button16: tartar16, Button26: tartar26, Button31: tartar31, Button36: tartar36, Button46: tartar46, typeOfCalculation: "tartar")

        resultTartar.text = "Результат: " + String(format: "%.1f", sumIndexTartar)
        
    }
    
    @IBAction func didTapAllResult(_ sender: Any) {
        
        sumIndexTartar = calculateIndex(Button11: tartar11, Button16: tartar16, Button26: tartar26, Button31: tartar31, Button36: tartar36, Button46: tartar46, typeOfCalculation: "tartar")
        
        resultTartar.text = "Результат: " + String(format: "%.1f", sumIndexTartar)
        
        sumIndexPlaque = calculateIndex(Button11: plaque11, Button16: plaque16, Button26: plaque26, Button31: plaque31, Button36: plaque36, Button46: plaque46, typeOfCalculation: "plaque")
        
        resultPlaque.text = "Результат: " + String(format: "%.1f", sumIndexPlaque)
        
        let allResult: Float = sumIndexPlaque + sumIndexTartar
        
        switch allResult{
        case 0...0.6:
            resultTartarAndPlaque.text = "Оценка: Хорошая, индекс = " + String(format: "%.1f", allResult)
        case 0.7...1.6:
            resultTartarAndPlaque.text = "Оценка: Средняя, индекс = " + String(format: "%.1f", allResult)
        case 1.7...2.5:
            resultTartarAndPlaque.text = "Оценка: Плохая, индекс = " + String(format: "%.1f", allResult)
        case 2.6...10:
            resultTartarAndPlaque.text = "Оценка: Очень плохая, индекс = " + String(format: "%.1f", allResult)
        default:
            break
        }
    }
    

}
