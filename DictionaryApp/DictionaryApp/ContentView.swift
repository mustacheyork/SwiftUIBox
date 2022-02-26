//
//  ContentView.swift
//  DictionaryApp
//
//  Created by Kanako Kobayashi on 2022/02/24.
//

import SwiftUI

struct ContentView: View {
    let areaList = ["関東", "関西", "四国"]
    @State private var selection = 0
    @State private var introduction = "東京は楽しいよ！"
    
    var body: some View {
        VStack {
            NavigationView {    // Formで使う場合はNavigationViewが必須
                Form {
                    Picker(selection: $selection, label: Text("エリアを選択")) {
                        ForEach(0 ..< areaList.count) { index in
                            Text(self.areaList[index])
                        }
                    }
                    if areaList[selection] == "関東" {
                        Button("東京") {
                            introduction = "浅草楽しいよ！"
                        }
                        Button("神奈川") {
                            introduction = "みなとみらい楽しいよ！"
                        }
                        Button("千葉") {
                            introduction = "九十九里浜楽しいよ！"
                        }
                    } else if areaList[selection] == "関西" {
                        Text("大阪")
                        Text("兵庫")
                    } else if areaList[selection] == "四国" {
                        Text("徳島")
                        Text("香川")
                    }
                 }
            }
            Text(introduction)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
