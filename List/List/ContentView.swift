//
//  ContentView.swift
//  List
//
//  Created by Kanako Kobayashi on 2022/01/05.
//

import SwiftUI

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText\(text)")
        self.text = text
    }
}


struct ContentView: View {
    var body: some View {
        List(0 ..< 100) { index in
            CustomText("Item \(index)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
