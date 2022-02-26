//
//  ContentView.swift
//  Picker
//
//  Created by Kanako Kobayashi on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    private let fruitList = ["アップル", "オレンジ", "グレープ"]
    @State private var fruitSelection = "アップル"
    
    var body: some View {
        Picker(selection: $fruitSelection, label: Text("ジュースを選択")) {
            ForEach(0 ..< fruitList.count) { index in
                Text(fruitList[index])
            }
        }
        .pickerStyle(.wheel)
        .padding()
        
        Text("あなたが選んだのは、\(fruitSelection)です。")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
