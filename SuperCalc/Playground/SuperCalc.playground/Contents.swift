import UIKit

// Finance Calculations
func calculateGrossWageSalary(hourly: Float) -> Float {
    return round(100 * (hourly * 40 * 52)) / 100
}

func calculateGrossWageHourly(salary: Float) -> Float {
    return round(100 * (salary / 52 / 40)) / 100
}

func hoursOfWorkToBuyItem(wage: Float, itemPrice: Float) -> Float {
    return itemPrice / wage
}

func estimatedCarPayments(vehiclePrice: Float, downPayment: Float, tradeInValue: Float, salesTax: Float, apr: Float, term: Int) -> Float{
    return 0
}

func splitTheBill(bill: Float, tipPercentage: Float, numberOfPeople: Int = 1) -> Float {
    let tip = bill * tipPercentage
    
    return (bill + tip) / Float(numberOfPeople)
}

func calculateDiscounts(price: Float, discount: Float) -> Float {
    return price * discount
}

let myHourlyWage = 16
calculateGrossWageSalary(hourly: Float(myHourlyWage))

let mySalaryWage = 0
calculateGrossWageHourly(salary: Float(mySalaryWage))

let macMini2020price = 1199.00
hoursOfWorkToBuyItem(wage: Float(myHourlyWage), itemPrice: Float(macMini2020price))

//let bill = 68.62
//let tipPercentage = 0.18
//splitTheBill(bill: Float(bill), tipPercentage: Float(tipPercentage))
//splitTheBill(bill: Float(bill), tipPercentage: Float(tipPercentage), numberOfPeople: 3)

let discount = 0.05
calculateDiscounts(price: Float(macMini2020price), discount: Float(discount))


// Conversions
