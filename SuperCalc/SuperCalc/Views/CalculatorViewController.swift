//
//  CalculatorViewController.swift
//  SuperCalc
//
//  Created by Jonathon Chenvert on 5/15/20.
//  Copyright © 2020 Jonathon Chenvert. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    

    @IBAction func OperationSelector(_ sender: UIButton) {
        print (sender.currentTitle)
    }
    
    
    @IBAction func NumberSelector(_ sender: UIButton) {
        print (sender.currentTitle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hi")
        // Do any additional setup after loading the view.
    }

    

}
