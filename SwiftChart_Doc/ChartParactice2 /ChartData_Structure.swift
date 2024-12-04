//
//  ChartData_Structure.swift
//  SwiftChart_Doc
//
//  Created by Muhammad Zeeshan on 01/12/2024.
//

import Foundation


struct ChartData: Identifiable {
    var id = UUID()
    var amount: Double
    var date: String
}

var chartData: [ChartData] = [
    .init(amount: 100, date: "01-09-2024"),
    .init(amount: 300, date: "02-09-2024"),
    .init(amount: 250, date: "03-09-2024"),
    .init(amount: 350, date: "04-09-2024"),
    .init(amount: 400, date: "05-09-2024"),
    .init(amount: 550, date: "06-09-2024"),
    .init(amount: 150, date: "07-09-2024"),
    .init(amount: 50, date: "08-09-2024"),
    .init(amount: 300, date: "09-09-2024"),
    .init(amount: 200, date: "10-09-2024"),
    .init(amount: 100, date: "11-09-2024"),
    .init(amount: 300, date: "12-09-2024"),
    .init(amount: 250, date: "13-09-2024"),
    .init(amount: 350, date: "14-09-2024"),
    .init(amount: 400, date: "15-09-2024"),
    .init(amount: 550, date: "16-09-2024"),
    .init(amount: 150, date: "17-09-2024"),
    .init(amount: 50, date: "18-09-2024"),
    .init(amount: 300, date: "19-09-2024"),
    .init(amount: 200, date: "20-09-2024"),
    .init(amount: 100, date: "21-09-2024"),
    .init(amount: 300, date: "22-09-2024"),
    .init(amount: 250, date: "23-09-2024"),
    .init(amount: 350, date: "24-09-2024"),
    .init(amount: 400, date: "25-09-2024"),
    .init(amount: 550, date: "26-09-2024"),
    .init(amount: 150, date: "27-09-2024"),
    .init(amount: 50, date: "28-09-2024"),
    .init(amount: 300, date: "29-09-2024"),
    .init(amount: 200, date: "30-09-2024"),
    
]
