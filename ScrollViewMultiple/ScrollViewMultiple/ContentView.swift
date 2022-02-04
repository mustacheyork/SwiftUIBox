//
//  ContentView.swift
//  ScrollViewMultiple
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 水平・垂直全方向スクロールを指定できる
         ScrollView([.horizontal, .vertical]) {
            ForEach(0..<100) { index in
                Text("データ\(index)")
                    .frame(width: 600, height: 100) // 表示サイズ
                    .foregroundColor(.white)        // 文字色
                    .background(.pink)              // 背景色
                    .font(.largeTitle)              // 文字サイズ
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

