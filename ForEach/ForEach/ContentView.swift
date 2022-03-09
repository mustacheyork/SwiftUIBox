//
//  ContentView.swift
//  ForEach
//
//  Created by Kanako Kobayashi on 2022/03/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1 ..< 6) { rangeNumber in
                Text("\(rangeNumber)番目のText")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
