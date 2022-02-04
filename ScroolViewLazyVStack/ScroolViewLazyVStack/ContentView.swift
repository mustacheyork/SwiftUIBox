//
//  ContentView.swift
//  ScroolViewLazyVStack
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(1..<101) { index in
                    Text("Row \(index)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
