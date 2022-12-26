//
//  ContentView.swift
//  Test
//
//  Created by Kanako Kobayashi on 2022/10/18.
//

import SwiftUI

enum RoutingModel: Hashable {
   case yesRoute
   case noRoute
}
 
struct ContentView: View {
   var body: some View {
       NavigationStack {
           HStack {
               NavigationLink(value: RoutingModel.yesRoute) {
                   Text("First")
                       .frame(maxWidth: .infinity, maxHeight: 100)
                       .background(.blue)
               }
               NavigationLink(value: RoutingModel.noRoute) {
                   Text("Second")
                       .frame(maxWidth: .infinity, maxHeight: 100)
                       .background(.pink)
               }
           }
           .foregroundColor(.white)
           .font(.largeTitle)
           .navigationTitle(Text("Start"))
           .navigationDestination(for: RoutingModel.self) { destination in
               switch destination {
               case .yesRoute:
                   FirstView()
               case .noRoute:
                   SecondView()
               }
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
       HStack {
           NavigationLink(value: RoutingModel.yesRoute) {
               Text("First")
                   .frame(maxWidth: .infinity, maxHeight: 100)
                   .background(.blue)
           }
           NavigationLink(value: RoutingModel.noRoute) {
               Text("Third")
                   .frame(maxWidth: .infinity, maxHeight: 100)
                   .background(.pink)
           }
       }
       .foregroundColor(.white)
       .font(.largeTitle)
       .navigationTitle(Text("Second View"))
       .navigationDestination(for: RoutingModel.self) { destination in
           switch destination {
           case .yesRoute:
               FirstView()
           case .noRoute:
               ThirdView()
           }
       }
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
