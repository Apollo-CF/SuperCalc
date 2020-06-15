//
//  SuperCalcTests.swift
//  SuperCalcTests
//
//  Created by Jonathon Chenvert on 6/6/20.
//  Copyright © 2020 Jonathon Chenvert. All rights reserved.
//

import XCTest
@testable import SuperCalc

class SuperCalcTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCalculateGrossWageSalary() {
        
        XCTAssertEqual(FinanceUtilities.calculateGrossWageSalary(hourly: 21), 43680, "The gross wage salary did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageSalary(hourly: 35), 72800, "The gross wage salary did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageSalary(hourly: 16.73), 34798.4, "The gross wage salary did not calculate as expected.")
        
        XCTAssertEqual(FinanceUtilities.calculateGrossWageSalary(hourly: 500), 1040000, "The gross wage salary did not calculate as expected.")
        
        XCTAssertEqual(FinanceUtilities.calculateGrossWageSalary(hourly: 0), 0, "The gross wage salary did not calculate as expected.")
    }
    
    func testCalculateGrossWageHourly() {
        
        XCTAssertEqual(FinanceUtilities.calculateGrossWageHourly(salary: 83592.25), 40.19, "The gross wage hourly did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageHourly(salary: 1234567890.12), 593542.3, "The gross wage hourly did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageHourly(salary: 10000), 4.81, "The gross wage hourly did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageHourly(salary: 1000), 0.48, "The gross wage hourly did not calculate as expected.")
        XCTAssertEqual(FinanceUtilities.calculateGrossWageHourly(salary: 0), 0, "The gross wage hourly did not calculate as expected.")
    }
    
    func testHoursOfWorkToBuyItem() {
        
        XCTAssertEqual(FinanceUtilities.hoursOfWorkToBuyItem(wage: 0, itemPrice: 1199.00), Float(truncating: kCFNumberPositiveInfinity), "")
        XCTAssertEqual(FinanceUtilities.hoursOfWorkToBuyItem(wage: FinanceUtilities.calculateGrossWageHourly(salary: 10000), itemPrice: 768.59), 159.79, "")
        XCTAssertEqual(FinanceUtilities.hoursOfWorkToBuyItem(wage: 35.62, itemPrice: 0), 0, "")
        XCTAssertEqual(FinanceUtilities.hoursOfWorkToBuyItem(wage: 93.57, itemPrice: 5999.00), 64.11, "")
        XCTAssertEqual(FinanceUtilities.hoursOfWorkToBuyItem(wage: 16, itemPrice: 328), 20.5, "")
    }
    
    func testEstimatedCarPayments() {
        XCTAssertEqual(FinanceUtilities.estimatedCarPayments(vehiclePrice: 0, downPayment: 0, tradeInValue: 0, salesTax: 0, apr: 0, term: 0), 0, "")
    }
    
    func testSplitTheBill() {
        
        XCTAssertEqual(FinanceUtilities.splitTheBill(bill: 100, tipPercentage: 0.05), 105, "")
    }
    
    func testCalculateDiscounts() {
        XCTAssertEqual(FinanceUtilities.calculateDiscounts(price: 1199.00, discount: 0.05), 59.95, "")
    }

}
