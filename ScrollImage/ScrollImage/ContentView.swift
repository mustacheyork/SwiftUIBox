//
//  ContentView.swift
//  ScrollImage
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 水平・垂直全方向スクロールを指定できる
         ScrollView([.horizontal, .vertical]) {
            Image("beach")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
