//
//  ContentView.swift
//  IdeaMemoApp
//
//  Created by Kanako Kobayashi on 2022/03/01.
//

import SwiftUI

struct ContentView: View {

    @State private var idea: String = ""
    @State private var ideaList: [String] = []
    @State private var isAlert = false

    var body: some View {
        VStack {
            TextEditor(text: $idea)
                .padding()
                .frame(width: 300, height: 100)
                .border(Color.gray, width: 1)
            
            Button("アイデア登録") {
                if idea.isEmpty {
                    isAlert.toggle()
                } else {
                    ideaList.append(idea)
                    idea = ""
                }
            }
            
            List {
                ForEach(ideaList, id: \.self) { text in
                    Text("\(text)")
                }
                .onDelete(perform: removeRows)
            }
        }
        .alert(isPresented: $isAlert) {
            Alert(title: Text("アイデアを入力してね！"))
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        ideaList.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
