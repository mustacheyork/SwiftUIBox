//
//  ContentView.swift
//  SampleChatsApp
//
//  Created by Kanako Kobayashi on 2022/11/02.
//

import SwiftUI
import Charts

enum PriorityEnum: String, CaseIterable {
    case emergencyHighAndImportantHigh = "緊急かつ重要"   // 緊急かつ重要
    case emergencyHighAndImportantLow =  "緊急かつ重要ではない"   // 緊急かつ重要ではない
    case emergencyLowAndImportantHigh = "緊急ではないが、重要"    // 緊急ではないが、重要
    case emergencyLowAndImportantLow  = "緊急ではないが、重要ではない"  // 緊急ではないが、重要ではない
    var displayString: String {
        switch self {
        case .emergencyHighAndImportantHigh:
            return "緊急かつ\n重要"
        case .emergencyHighAndImportantLow:
            return "緊急かつ\n重要でない"
        case .emergencyLowAndImportantHigh:
            return "緊急ではないが、\n重要"
        case .emergencyLowAndImportantLow:
            return "緊急ではないが、\n重要でない"
        }
    }
}


struct TaskEntry: Identifiable {
    let id = UUID()
    let priority: String
    let count: Int
}

struct ContentView: View {
    let taskList: [TaskEntry] = [
        TaskEntry(priority: PriorityEnum.emergencyHighAndImportantHigh.rawValue, count: 3),
        TaskEntry(priority: PriorityEnum.emergencyLowAndImportantLow.rawValue, count: 2),
        TaskEntry(priority: PriorityEnum.emergencyLowAndImportantHigh.rawValue, count: 4),
        TaskEntry(priority: PriorityEnum.emergencyHighAndImportantLow.rawValue, count: 1),
    ]

    var body: some View {
        Chart(taskList) { item in
            BarMark(
                x: .value("Task", item.count)
            )
            .foregroundStyle(by: .value("Task Priority", item.priority))
        }
        .chartForegroundStyleScale ([
            PriorityEnum.emergencyHighAndImportantLow.rawValue: .yellow,
            PriorityEnum.emergencyLowAndImportantLow.rawValue: .blue,
            PriorityEnum.emergencyLowAndImportantHigh.rawValue: .green,
            PriorityEnum.emergencyHighAndImportantHigh.rawValue: .red
        ])
        .frame(height: 120)
        .onAppear {
            print(taskList)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
