//
//  ContentView.swift
//  ScrollViewChild
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

// 独自の子Viewを定義
struct RowText: View {
    // 受け取った引数を保持する定数
    let outputText: String

    // イニシャライザー（最初に動くメソッド）
    init(_ inputText: String) {
        print(inputText) // ログ出力
        self.outputText = inputText
    }
    
    var body: some View {
        Text(outputText)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView() {
            LazyVStack {
                ForEach(0..<100) { index in
                    // 子Viewを用いて描画
                    RowText("データ\(index)")
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
