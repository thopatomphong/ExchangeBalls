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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressAddButton() {
        print("Press Add Button")
    }
    
    @IBAction func pressResetButton() {
        print("Press Reset Button")
    }
    
    @IBAction func pressExchangeButton() {
        print("Press Exchange Button")
    }

}

