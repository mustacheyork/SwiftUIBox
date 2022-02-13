//
//  ContentView.swift
//  ListArrayApp
//
//  Created by Kanako Kobayashi on 2022/02/13.
//

import SwiftUI

struct ContentView: View {
    let fruits: [String] = ["りんご", "ぶどう", "いちご"]
    var body: some View {
        List(fruits, id: \.self) { fruit in
            Text("\(fruit)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
