//
//  ViewController.swift
//  CalculatorAngel
//
//  Created by Diplomado on 16/03/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonClearAll: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonResult: UIButton!
    
    var operation = 0
    var valueOne: String = ""
    var valueTwo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButtonNine(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonEight(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonSeven(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonSix(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonFive(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonFour(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonThree(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonTwo(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonOne(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonZero(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonPoint(_ sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    
    @IBAction func actionButtonClear(_ sender: UIButton) {
        valueOne = ""
        valueTwo = ""
        operation = 0
        display.text = ""
    }
    
    @IBAction func actionButtonMinus(_ sender: UIButton) {
        valueOne = display.text!
        operation = sender.tag
        display.text = ""
    }
    
    @IBAction func actionButtonPlus(_ sender: UIButton) {
        valueOne = display.text!
        operation = sender.tag
        display.text = ""
    }
    
    @IBAction func actionButtonMultiply(_ sender: UIButton) {
        valueOne = display.text!
        operation = sender.tag
        display.text = ""
    }
    
    @IBAction func actionButtonDivision(_ sender: UIButton) {
        valueOne = display.text!
        operation = sender.tag
        display.text = ""
    }
    
    @IBAction func actionButtonResult(_ sender: UIButton) {
        valueTwo =  display.text!
        
        switch operation {
        case 300:
            let valueAuxOne = (Double(valueOne)!)
            let valueAuxTwo = (Double(valueTwo)!)
            let operationResultAux: Double = valueAuxOne + valueAuxTwo
            display.text = (String(operationResultAux))
            break
        case 400:
            let valueAuxOne = (Double(valueOne)!)
            let valueAuxTwo = (Double(valueTwo)!)
            let operationResultAux: Double = valueAuxOne - valueAuxTwo
            display.text = (String(operationResultAux))
            break
        case 500:
            let valueAuxOne = (Double(valueOne)!)
            let valueAuxTwo = (Double(valueTwo)!)
            let operationResultAux: Double = valueAuxOne * valueAuxTwo
            display.text = (String(operationResultAux))
            break
        case 600:
            let valueAuxOne = (Double(valueOne)!)
            let valueAuxTwo = (Double(valueTwo)!)
            if valueAuxTwo != 0 {
                let operationResultAux: Double = valueAuxOne / valueAuxTwo
                display.text = (String(operationResultAux))
            } else {
                display.text = ("division between zero dont'n exist")
            }
            break
        default:
            return
        }
    }
}

