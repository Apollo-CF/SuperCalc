//
//  FinanceViewController.swift
//  SuperCalc
//
//  Created by Jonathon Chenvert on 6/7/20.
//  Copyright © 2020 Jonathon Chenvert. All rights reserved.
//

import UIKit

class FinanceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var leftTopLabel: UILabel!
    @IBOutlet weak var leftTopTextField: UITextField!
    @IBOutlet weak var leftMiddleLabel: UILabel!
    @IBOutlet weak var leftMiddleTextField: UITextField!
    @IBOutlet weak var leftBottomLabel: UILabel!
    @IBOutlet weak var leftBottomTextField: UITextField!
    
    @IBOutlet weak var rightTopLabel: UILabel!
    @IBOutlet weak var rightTopTextField: UITextField!
    @IBOutlet weak var rightMiddleLabel: UILabel!
    @IBOutlet weak var rightMiddleTextField: UITextField!
    @IBOutlet weak var rightBottomLabel: UILabel!
    @IBOutlet weak var rightBottomTextField: UITextField!
    
    @IBOutlet weak var calculatedResultLabel: UILabel!
    
    @IBOutlet weak var financePickerView: UIPickerView!
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadPickerData()
    }
    
    func loadPickerData() {
        
        // Connect data
        self.financePickerView.delegate = self
        self.financePickerView.dataSource = self
        
        // Input data into array
        pickerData = ["Hourly to Salary", "Salary to Hourly", "Buy an item after hours worked"]
    }
    
    // MARK: - Picker View Methods

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}
