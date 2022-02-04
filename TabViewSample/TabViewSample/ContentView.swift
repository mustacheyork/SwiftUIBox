//
//  ContentView.swift
//  TabViewSample
//
//  Created by Kanako Kobayashi on 2021/12/04.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            PageOneView()
                .tabItem{
                    Label("Page1", systemImage: "1.circle")
                }
                .tag(1)
            
            PageTwoView()
                .tabItem{
                    Label("Page2", systemImage: "2.circle")
                }
                .tag(2)
            
            PageThreeView()
                .tabItem{
                    Label("Page3", systemImage: "3.circle")
                }
                .tag(3)
        } // TabViewここまで
        .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
