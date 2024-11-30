//
//  ToyShape_InfoToVisualize.swift
//  SwiftChart_Doc
//
//  Created by Muhammad Zeeshan on 01/12/2024.
//

import Foundation

struct ToyShape_InfoToVisualize: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}


// MARK: Initialize an array of ToyShape struct to hold the data
//var data: [ToyShape_InfoToVisualize] = [
//    .init(type: "Cube", count: 5),
//    .init(type: "Sphere", count: 4),
//    .init(type: "Pyramid", count: 4)
//]

//MARK: Stacked Bar Data to seprate with color

var stackedBarData: [ToyShape_InfoToVisualize] = [
    .init(color: "Green", type: "Cube", count: 2),
    .init(color: "Green", type: "Sphere", count: 0),
    .init(color: "Green", type: "Pyramid", count: 1),
    .init(color: "Purple", type: "Cube", count: 1),
    .init(color: "Purple", type: "Sphere", count: 1),
    .init(color: "Purple", type: "Pyramid", count: 1),
    .init(color: "Pink", type: "Cube", count: 1),
    .init(color: "Pink", type: "Sphere", count: 2),
    .init(color: "Pink", type: "Pyramid", count: 0),
    .init(color: "Yellow", type: "Cube", count: 1),
    .init(color: "Yellow", type: "Sphere", count: 1),
    .init(color: "Yellow", type: "Pyramid", count: 2)
]
