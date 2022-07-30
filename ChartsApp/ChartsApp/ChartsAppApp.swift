//
//  ChartsAppApp.swift
//  ChartsApp
//
//  Created by Kanako Kobayashi on 2022/04/11.
//

import SwiftUI

@main
struct ChartsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(pieSliceData: PieSliceData(
                startAngle: Angle(degrees: 0.0),
                endAngle: Angle(degrees: 220.0),
                color: Color.blue))
        }
    }
}
