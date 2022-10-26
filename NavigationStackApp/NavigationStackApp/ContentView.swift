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
                   Text("Yes")
               }
               NavigationLink(value: RoutingModel.noRoute) {
                   Text("No")
               }
           }
           .navigationTitle(Text("First"))
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
       Text("Second View")
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
