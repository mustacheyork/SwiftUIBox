//
//  ContentView.swift
//  NavigationView
//
//  Created by Kanako Kobayashi on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    @State var civilizations = ["ポルトガル", "スペイン", "オランダ", "フランス", "日本", "アステカ"]
 
    var body: some View {
        NavigationView {
            List(civilizations, id: \.self) { cvlz in
                NavigationLink(destination: DetailView(name: cvlz)) {
                    Text(cvlz)
                }
            }
            .navigationBarTitle("Civilization")
            .navigationBarHidden(true)
        }
    }
}

struct DetailView: View {
    var name: String = "Hello SwiftUI"
    var body: some View {
        Text(name).font(.system(size: 30))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
