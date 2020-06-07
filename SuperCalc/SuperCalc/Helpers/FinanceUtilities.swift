//
//  FinanceUtilities.swift
//  SuperCalc
//
//  Created by Jonathon Chenvert on 6/6/20.
//  Copyright © 2020 Jonathon Chenvert. All rights reserved.
//

import Foundation

class FinanceUtilities {
    static func calculateGrossWageSalary(hourly: Float) -> Float {
        return round(100 * (hourly * 40 * 52)) / 100
    }

    static func calculateGrossWageHourly(salary: Float) -> Float {
        return round(100 * (salary / 52 / 40)) / 100
    }

    static func hoursOfWorkToBuyItem(wage: Float, itemPrice: Float) -> Float {
        return round(100 * (itemPrice / wage)) / 100
    }

    static func estimatedCarPayments(vehiclePrice: Float, downPayment: Float, tradeInValue: Float, salesTax: Float, apr: Float, term: Int) -> Float{
        return 0
    }

    static func splitTheBill(bill: Float, tipPercentage: Float, numberOfPeople: Int = 1) -> Float {
        let tip = bill * tipPercentage
        
        return round(100 * (bill + tip) / Float(numberOfPeople)) / 100
    }

    static func calculateDiscounts(price: Float, discount: Float) -> Float {
        return round(100 * (price * discount)) / 100
    }
}


