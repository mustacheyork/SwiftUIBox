//
//  ContentView.swift
//  NavigationStackCaseC
//
//  Created by Kanako Kobayashi on 2022/10/27.
//

import SwiftUI

struct Park: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct Fruits: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

enum Route: Hashable {
    case park(Park)
    case fruits(Fruits)
}

struct ContentView: View {
    let parkList: [Park] =  [.init(name: "メリケンパーク"),
                             .init(name: "万博記念公園"),
                             .init(name: "奈良公園"),
                             .init(name: "代々木公園")]
    
    let fruitsList: [Fruits] =  [.init(name: "スイカ"),
                                 .init(name: "みかん"),
                                 .init(name: "りんご"),
                                 .init(name: "バナナ")]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Fruits List") {
                    ForEach(fruitsList) { fruits in
                        NavigationLink(value: Route.fruits(fruits)) {
                            Text(fruits.name)
                        }
                    }
                }

                Section("Park List") {
                    ForEach(parkList) { park in
                        NavigationLink(value: Route.park(park)) {
                            Text(park.name)
                        }
                    }
                }
            }
            .navigationTitle("Fruits Park")
            .navigationDestination(for: Route.self) { route in
                switch route {
                case let .fruits(fruits):
                    FruitsDetailView(fruits: fruits)
                case let .park(park):
                    ParkDetailView(park: park)
                }
            }
        }
    }
}

struct ParkDetailView: View {
    let park: Park
    
    var body: some View {
        Text(park.name)
    }
}

struct FruitsDetailView: View {
    let fruits: Fruits
    
    var body: some View {
        Text(fruits.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
