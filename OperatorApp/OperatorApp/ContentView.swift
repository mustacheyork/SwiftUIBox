//
//  ContentView.swift
//  OperatorApp
//
//  Created by Kanako Kobayashi on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(1..<100) { number in
            if number % 2 == 0 {
                Text("\(number)")
                    .listRowBackground(Color.pink)
            } else {
                Text("\(number)")
                    .listRowBackground(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
