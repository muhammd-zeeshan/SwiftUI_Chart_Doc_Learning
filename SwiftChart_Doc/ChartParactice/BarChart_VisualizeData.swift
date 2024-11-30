//
//  BarChart_VisualizeData.swift
//  SwiftChart_Doc
//
//  Created by Muhammad Zeeshan on 01/12/2024.
//

import SwiftUI
import Charts

struct BarChart_VisualizeData: View {
    var body: some View {
        Chart {
//            ForEach(data) { shape in
//                BarMark(
//                    x: .value("Shape Type", shape.type),
//                    y: .value("Total Count", shape.count)
//                )
//            }
            
            // MARK: Example Stacked Bar Seprate With Color
            ForEach(stackedBarData) { shape in
                BarMark(
                    x: .value("Shape Type", shape.type),
                    y: .value("Total Shape", shape.count)
                )
                .foregroundStyle(by: .value("Shape Color", shape.color))
            }
        }
        .chartForegroundStyleScale([
            "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow // Used for correct scalling of                                                             basmark based on its different color
        ])
        .padding()
    }
}

#Preview {
    BarChart_VisualizeData()
}
