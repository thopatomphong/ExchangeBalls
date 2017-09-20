//
//  ViewController.swift
//  ExchangeBalls
//
//  Created by Patomphong Wongkalasin on 9/20/2560 BE.
//  Copyright © 2560 ReedUs TechReedUS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlet
    @IBOutlet weak var textFieldInput: UITextField!
    @IBOutlet weak var buttonAddInput: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonExchange: UIButton!
    @IBOutlet weak var textViewResult: UITextView!
    @IBOutlet weak var labelErrorMessage: UILabel!
    
    //Parameter
    var N:Int = 0
    var K:Int = 0
    var inputs = [(Ai:Int, Bi:Int)]()
    var isShowResult:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addInputValues()
        return true
    }

    @IBAction func pressAddButton() {
        addInputValues()
    }
    
    @IBAction func pressResetButton() {
        //Clear Display Values
        textViewResult.text = ""
        textFieldInput.text = ""
        labelErrorMessage.text = ""
        isShowResult = false
    }
    
    @IBAction func pressExchangeButton() {
        if !isShowResult {
            textFieldInput.text = ""
            
            let result = Exchange().exchangeBalls(N: N, K: K, inputs: inputs)
            
            textViewResult.text = textViewResult.text + "\n\n" + "Output: " + result
            isShowResult = true
        }
    }

    func addInputValues() {
        //Clear Error Message
        labelErrorMessage.text = ""
        
        if isShowResult {
            //Clear Result Text
            textViewResult.text = ""
            isShowResult = false
            
            //Reset Parameter
            N = 0
            K = 0
            inputs = []
        }
        
        let textInputs = textFieldInput.text
        
        guard let inputValues = textInputs?.components(separatedBy: " ") else {
            return
        }
        
        //check input space between values
        if inputValues.count == 2 {
            if N == 0 || K == 0 {
                guard let inputN = Int(inputValues[0]), let inputK = Int(inputValues[1]) else {
                    //Show Error Message
                    labelErrorMessage.text = "Invalid Input : Please Input Again"
                    return
                }
                
                //Validate N and K Values
                if Exchange().validateOperationsAndSets(N: inputN, K: inputK) {
                    
                    //Set Operations And Sets
                    N = inputN
                    K = inputK
                    
                    //Show Input
                    textViewResult.text = "Input:" + "\n" + "\(N) \(K)"
                } else {
                    //Show Error Message
                    labelErrorMessage.text = "Invalid Input : Please Input Again"
                }
            } else {
                
                guard let Ai = Int(inputValues[0]) else {
                    //Show Error Message
                    labelErrorMessage.text = "Invalid Input : Please Input Between 1 and 8"
                    return
                }
                
                guard let Bi = Int(inputValues[1]) else {
                    //Show Error Message
                    labelErrorMessage.text = "Invalid Input : Please Input Between 1 and 8"
                    return
                }
                
                //Validate Ai and Bi Values
                if Exchange().validateAiAndBi(Ai, Bi) {
                    
                    //Save Input Values
                    inputs.append((Ai, Bi))
                    
                    //Show Input Values
                    textViewResult.text = textViewResult.text + "\n" + "\(Ai) \(Bi)"
                } else {
                    //Show Error Message
                    labelErrorMessage.text = "Invalid Input : Please Input Values Again"
                }
            }
            
            textFieldInput.text = ""
        } else {
            //Show Error Message
            labelErrorMessage.text = "Invalid Input : Please Input Space Between Values"
        }
    }
    
    func hideKeyboard() {
        //Hide Keyboard
        textFieldInput.resignFirstResponder()
    }
}

