//
//  ContentView.swift
//  TabviewApp
//
//  Created by Kanako Kobayashi on 2022/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView()
                 .edgesIgnoringSafeArea(.top)
                 .tabItem {
                     Image(systemName: "1.circle")
                     Text("Tab 1")
                 }
             
            SecondView()
                 .edgesIgnoringSafeArea(.top)
                 .tabItem {
                     Image(systemName: "2.circle")
                     Text("Tab 2")
                 }
             
             ThirdView()
                 .edgesIgnoringSafeArea(.top)
                 .tabItem {
                     Image(systemName: "3.circle")
                     Text("Tab 3")
                 }
        }
    }
}

struct FirstView: View {
    var body: some View {
        Text("First View")
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
    }
}

struct ThirdView: View {
    var body: some View {
        Text("Third View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
