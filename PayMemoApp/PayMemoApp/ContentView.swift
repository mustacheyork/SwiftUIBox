//
//  ContentView.swift
//  PayMemoApp
//
//  Created by Kanako Kobayashi on 2022/03/01.
//

import SwiftUI

struct ContentView: View {
    @State private var selectionDate: Date = Date()
    @State private var memo: String = ""
    @State private var diaryList: Array<(Date, String)> = []
    let fruits: [String] = ["りんご", "ぶどう", "いちご"]
    
    var body: some View {
        VStack {
            Form {
                DatePicker("日時", selection: $selectionDate)
            }
            
            TextEditor(text: $memo)
                .frame(width: 300, height: 100)
                .border(Color.gray, width: 1)
            
            Button("登録") {
                print(memo)
                diaryList.append((selectionDate, memo))
            }
            
            List(fruits, id: \.self) { fruit in
                Text("\(fruit)")
            }


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
