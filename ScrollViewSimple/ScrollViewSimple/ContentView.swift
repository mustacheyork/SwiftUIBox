//
//  ContentView.swift
//  ScrollViewSimple
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView() {
            ForEach(1..<101) { index in
                Text("データ\(index)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
