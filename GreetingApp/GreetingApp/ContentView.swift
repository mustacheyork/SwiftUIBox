//
//  ContentView.swift
//  GreetingApp
//
//  Created by Kanako Kobayashi on 2022/02/19.
//

import SwiftUI

struct ContentView: View {
    @State var greeting: String = ""
    let name: String = "小林 加奈子"
    let height: Int = 155
    
    var body: some View {
        VStack {
            Text(greeting)
                .padding()
            
            Button("あなたは誰ですか？") {
                greeting = "こんにちは！私は、\(name)です。身長は、\(height)cmです！"
            }
            .buttonStyle(.borderedProminent)
            
            Button("クリア") {
                greeting = ""
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
