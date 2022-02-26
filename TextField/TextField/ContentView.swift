//
//  ContentView.swift
//  TextField
//
//  Created by Kanako Kobayashi on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    @State var inputName: String = ""
    
    var body: some View {
        TextField("お名前を入力してください",text: $inputName)
            .padding()
        Text(inputName)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
