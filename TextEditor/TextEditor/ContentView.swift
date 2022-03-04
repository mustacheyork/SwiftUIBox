//
//  ContentView.swift
//  TextEditor
//
//  Created by Kanako Kobayashi on 2022/03/02.
//

import SwiftUI

struct ContentView: View {
    @State private var memo: String = ""
    
    var body: some View {
        TextEditor(text: $memo)
            .padding()
            .frame(width: 300, height: 100)
            .border(Color.gray, width: 1)
        
        Text("\(memo)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
