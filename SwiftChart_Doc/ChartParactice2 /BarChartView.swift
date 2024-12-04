//
//  BarChartView.swift
//  SwiftChart_Doc
//
//  Created by Muhammad Zeeshan on 01/12/2024.
//

import SwiftUI
import Charts

//struct ScrollableChartWithDynamicDate: View {
//    @State private var baseDate = Date() // The reference date
//    @State private var chartData = generateData(for: Date()) // Chart data based on the current date
//    @State private var dragOffset: CGFloat = 0 // Track the scroll gesture's drag offset
//
//    var body: some View {
//        VStack {
//            // Display the dynamically updating date
//            Text("Current Date: \(formattedDate(baseDate))")
//                .font(.headline)
//                .padding()
//
//            // Scrollable chart
//            ScrollView(.horizontal) {
//                Chart(chartData) { dataPoint in
//                    BarMark(
//                        x: .value("Date", dataPoint.dateString),
//                        y: .value("Value", dataPoint.value)
//                    )
//                    .foregroundStyle(.blue)
//                }
//                .frame(width: CGFloat(chartData.count) * 50, height: 300)// Set chart height
//                .gesture(
//                    DragGesture()
//                        .onChanged { gesture in
//                            handleScroll(gesture.translation.width)
//                        }
//                        .onEnded { _ in
//                            finalizeScroll()
//                        }
//                )
//            }
//            .frame(maxWidth: .infinity)
//            .padding()
//        }
//        .onAppear {
//            // Generate initial data for the base date
//            chartData = Self.generateData(for: baseDate)
//        }
//    }
//
//    // Update the chart data dynamically based on user scroll
//    private func handleScroll(_ translation: CGFloat) {
//        dragOffset = translation
//
//        let dayChangeThreshold: CGFloat = 50 // Pixels to trigger a day change
//        if dragOffset > dayChangeThreshold { // Scroll left (go back a day)
//            baseDate = Calendar.current.date(byAdding: .day, value: -1, to: baseDate)!
//            chartData = Self.generateData(for: baseDate) // Update chart data
//            dragOffset = 0 // Reset offset
//        } else if dragOffset < -dayChangeThreshold { // Scroll right (go forward a day)
//            baseDate = Calendar.current.date(byAdding: .day, value: 1, to: baseDate)!
//            chartData = Self.generateData(for: baseDate) // Update chart data
//            dragOffset = 0 // Reset offset
//        }
//    }
//
//    // Finalize the scroll gesture
//    private func finalizeScroll() {
//        dragOffset = 0 // Reset drag offset
//    }
//
//    // Helper to format the date into a readable string
//    private func formattedDate(_ date: Date) -> String {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd-MM-yyyy"
//        return formatter.string(from: date)
//    }
//
//    // Generate chart data dynamically based on a specific date
//    static private func generateData(for date: Date) -> [DataPoint] {
//        let calendar = Calendar.current
//        let startOfDay = calendar.startOfDay(for: date)
//
//        // Generate 7 data points, one for each hour (or any range you'd like)
//        return (0..<7).map { hourOffset in
//            let hour = calendar.date(byAdding: .hour, value: hourOffset, to: startOfDay)!
//            return DataPoint(date: hour, value: Double.random(in: 10...100))
//        }
//    }
//}
//
//// Data structure for chart data
//struct DataPoint: Identifiable {
//    let id = UUID()
//    let date: Date
//    let value: Double
//
//    var dateString: String {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH:mm" // Format the date as hour:minute
//        return formatter.string(from: date)
//    }
//}
//
//struct ScrollableChartWithDynamicDate_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollableChartWithDynamicDate()
//    }
//}


struct TopStyleChart: View {
    let data = [
        (name: "Chachapa", sales: 916),
        (name: "Injere", sales: 850),
        (name: "Crepe", sales: 804),
        (name: "Jian Bing", sales: 753),
        (name: "Dosa", sales: 654),
        (name: "American", sales: 618),
    ]
    
    var body: some View {
        Chart(data, id: \.name) {
            BarMark(
                x: .value("Names", $0.sales),
                y: .value("Sales", $0.name)
                
            )
            // Set the ForegroundStyle of the bars.
            .foregroundStyle(.pink)
            // Customize the accessibility label and value.
            .accessibilityLabel($0.name)
            .accessibilityValue("\($0.sales)")
        }
    }
}

#Preview {
//    TopStyleChart()
//    DailySalesChart()
//    LocationsChart()
//    MonthlySalesChart2()
//    MonthlySaleschart3()
    InteractiveBrushingChart()
}


struct DailySalesChart: View {
    var body: some View {
        Chart {
            ForEach(dailySales, id: \.day) {
                BarMark(
                    x: .value("Day", $0.day, unit: .day),
                    y: .value("Sales", $0.sales)
                )
            }
        }
        .frame(height: 350)
    }
    
    let dailySales: [(day: Date, sales: Int)] = [
        (day: date(year: 2022, month: 5, day: 8), sales: 168),
        (day: date(year: 2022, month: 5, day: 9), sales: 117),
        (day: date(year: 2022, month: 5, day: 10), sales: 106),
        (day: date(year: 2022, month: 5, day: 11), sales: 119),
        (day: date(year: 2022, month: 5, day: 12), sales: 109),
        (day: date(year: 2022, month: 5, day: 13), sales: 104),
        (day: date(year: 2022, month: 5, day: 14), sales: 196),
        (day: date(year: 2022, month: 5, day: 15), sales: 172),
        (day: date(year: 2022, month: 5, day: 16), sales: 122),
        (day: date(year: 2022, month: 5, day: 17), sales: 115),
        (day: date(year: 2022, month: 5, day: 18), sales: 138),
        (day: date(year: 2022, month: 5, day: 19), sales: 110),
        (day: date(year: 2022, month: 5, day: 20), sales: 106),
        (day: date(year: 2022, month: 5, day: 21), sales: 187),
        (day: date(year: 2022, month: 5, day: 22), sales: 187),
        (day: date(year: 2022, month: 5, day: 23), sales: 119),
        (day: date(year: 2022, month: 5, day: 24), sales: 160),
        (day: date(year: 2022, month: 5, day: 25), sales: 144),
        (day: date(year: 2022, month: 5, day: 26), sales: 152),
        (day: date(year: 2022, month: 5, day: 27), sales: 148),
        (day: date(year: 2022, month: 5, day: 28), sales: 240),
        (day: date(year: 2022, month: 5, day: 29), sales: 242),
        (day: date(year: 2022, month: 5, day: 30), sales: 173),
        (day: date(year: 2022, month: 5, day: 31), sales: 143),
        (day: date(year: 2022, month: 6, day: 1), sales: 137),
        (day: date(year: 2022, month: 6, day: 2), sales: 123),
        (day: date(year: 2022, month: 6, day: 3), sales: 146),
        (day: date(year: 2022, month: 6, day: 4), sales: 214),
        (day: date(year: 2022, month: 6, day: 5), sales: 250),
        (day: date(year: 2022, month: 6, day: 6), sales: 146)
    ]
}

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
}


//


struct LocationChart: View {
    var body: some View {
        Chart {
            ForEach(seriesData, id:\.city) { series in
                ForEach(series.data, id: \.weekday) {
                    // Try Change to Linemark"
                    BarMark(
                        x: .value("weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .position(by: .value("City", series.city))
            }
        }
        .frame(height: 350)
        .padding(5)
    }
    
    let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
}

//


struct LocationsChart: View {
    var body: some View {
        Chart {
            ForEach(seriesData, id: \.city) { series in
                ForEach(series.data, id: \.weekday) {
                    LineMark(
                        x: .value("Weekday", $0.weekday, unit: .day),
                        y: .value("Sales", $0.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .symbol(by: .value("City", series.city))
                .interpolationMethod(.catmullRom)
            }
        }
        .chartYScale(domain: 0 ... 200)
        .chartForegroundStyleScale([
            "San Francisco": .orange,
            "Cupertino": .pink
        ])
        .frame(height: 350)
    }
    
    let seriesData = [
        (
            city: "Cupertino", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
            ]
        ),
        (
            city: "San Francisco", data: [
                (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
                (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
                (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
                (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
                (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
                (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
            ]
        )
    ]
}


//


struct MonthlySalesChart: View {
    var body: some View {
        Chart {
            ForEach(data, id: \.month) {
                AreaMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax)
                )
                .opacity(0.3)
                LineMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage)
                )
            }
        }
    }

    let data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]
}


//


struct MonthlySalesChart2: View {
    var body: some View {
        Chart {
            ForEach(data, id: \.month) {
                BarMark(
                    x: .value("Month", $0.month, unit: .month),
                    yStart: .value("Daily Min", $0.dailyMin),
                    yEnd: .value("Daily Max", $0.dailyMax),
                    width: .ratio(0.6)
                )
                .opacity(0.3)
                RectangleMark(
                    x: .value("Month", $0.month, unit: .month),
                    y: .value("Daily Average", $0.dailyAverage),
                    width: .ratio(0.6),
                    height: 2
                )
            }
            .foregroundStyle(.gray.opacity(0.5))
            
            RuleMark(
                y: .value("Average", averageValue)
            )
            .lineStyle(StrokeStyle(lineWidth: 3))
            .annotation(position: .top, alignment: .leading) {
                Text("Average \(averageValue, format: .number)")
                    .font(.headline)
                    .foregroundStyle(.blue)
            }
        }
        .frame(height: 350)
    }
    
    let data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]
    
    let averageValue = 137
}


//

// MARK: Monthly Sales Chart With Custom x Axis
struct MonthlySaleschart3: View {
    var body: some View {
        Chart(data, id: \.month) {
            BarMark(
                x: .value("Month", $0.month, unit: .month),
                y: .value("Sales", $0.sales)
            )
        }
        .chartXAxis(content: {
            AxisMarks(values: .stride(by: .month)) { value in
                AxisGridLine(centered: true, stroke: StrokeStyle(lineWidth: 0.5))
                AxisTick(centered: true, length: .label, stroke: StrokeStyle(lineWidth: 0.5))
                AxisValueLabel(
                    format: .dateTime.month(.narrow),
                    centered: true
                )
            }
        })
        .chartYAxis {
            AxisMarks( preset: .aligned, position: .leading)
               }
        .frame(height: 350)
    }
    
    let data = [
        (month: date(year: 2021, month: 7), sales: 3952),
        (month: date(year: 2021, month: 8), sales: 4044),
        (month: date(year: 2021, month: 9), sales: 3930),
        (month: date(year: 2021, month: 10), sales: 4217),
        (month: date(year: 2021, month: 11), sales: 4006),
        (month: date(year: 2021, month: 12), sales: 3994),
        (month: date(year: 2022, month: 1), sales: 4202),
        (month: date(year: 2022, month: 2), sales: 3749),
        (month: date(year: 2022, month: 3), sales: 4329),
        (month: date(year: 2022, month: 4), sales: 4084),
        (month: date(year: 2022, month: 5), sales: 4559),
        (month: date(year: 2022, month: 6), sales: 1023)
    ]
    
    let averageValue = 137
}


//

struct InteractiveBrushingChart: View {
    @State var range: (Date, Date)? = nil
    
    var body: some View {
        Chart {
            ForEach(data, id: \.day) {
                BarMark(
                    x: .value("Month", $0.day, unit: .weekday),
                    y: .value("Sales", $0.sales)
                )
            }
            
            if let (start, end) = range {
                RectangleMark(
                    xStart: .value("Selection Start", start),
                    xEnd: .value("Selection End", end)
                )
                .foregroundStyle(.gray.opacity(0.2))
            }
        }
        .frame(height: 350)
        .chartOverlay { proxy in
            GeometryReader { nthGeoItem in
                Rectangle().fill(.clear).contentShape(Rectangle())
                    .gesture( DragGesture()
                        .onChanged { value in
                            // Find the x-coordinates in the charts plot area.
                            let xStart = value.startLocation.x - nthGeoItem[proxy.plotFrame!].origin.x
                            let xCurrent = value.location.x - nthGeoItem[proxy.plotFrame!].origin.x
                            // find the date values at the x-coordinates.
                            if let dateStart: Date = proxy.value(atX: xStart),
                               let dateCurrent: Date = proxy.value(atX: xCurrent) {
                                range = (dateStart, dateCurrent)
                            }
                        }
                        .onEnded { _ in range = nil }
                    )
            }
        }
    }
    
    let data: [(day: Date, sales: Int)] = [
         (day: date(year: 2022, month: 5, day: 8), sales: 168),
         (day: date(year: 2022, month: 5, day: 9), sales: 117),
         (day: date(year: 2022, month: 5, day: 10), sales: 106),
         (day: date(year: 2022, month: 5, day: 11), sales: 119),
         (day: date(year: 2022, month: 5, day: 12), sales: 109),
         (day: date(year: 2022, month: 5, day: 13), sales: 104),
         (day: date(year: 2022, month: 5, day: 14), sales: 196),
         (day: date(year: 2022, month: 5, day: 15), sales: 172),
         (day: date(year: 2022, month: 5, day: 16), sales: 122),
         (day: date(year: 2022, month: 5, day: 17), sales: 115),
         (day: date(year: 2022, month: 5, day: 18), sales: 138),
         (day: date(year: 2022, month: 5, day: 19), sales: 110),
         (day: date(year: 2022, month: 5, day: 20), sales: 106),
         (day: date(year: 2022, month: 5, day: 21), sales: 187),
         (day: date(year: 2022, month: 5, day: 22), sales: 187),
         (day: date(year: 2022, month: 5, day: 23), sales: 119),
         (day: date(year: 2022, month: 5, day: 24), sales: 160),
         (day: date(year: 2022, month: 5, day: 25), sales: 144),
         (day: date(year: 2022, month: 5, day: 26), sales: 152),
         (day: date(year: 2022, month: 5, day: 27), sales: 148),
         (day: date(year: 2022, month: 5, day: 28), sales: 240),
         (day: date(year: 2022, month: 5, day: 29), sales: 242),
         (day: date(year: 2022, month: 5, day: 30), sales: 173),
         (day: date(year: 2022, month: 5, day: 31), sales: 143),
         (day: date(year: 2022, month: 6, day: 1), sales: 137),
         (day: date(year: 2022, month: 6, day: 2), sales: 123),
         (day: date(year: 2022, month: 6, day: 3), sales: 146),
         (day: date(year: 2022, month: 6, day: 4), sales: 214),
         (day: date(year: 2022, month: 6, day: 5), sales: 250),
         (day: date(year: 2022, month: 6, day: 6), sales: 146)
     ]
}
