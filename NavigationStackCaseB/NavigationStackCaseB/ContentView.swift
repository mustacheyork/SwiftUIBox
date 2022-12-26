//
//  ContentView.swift
//  NavigationStackCaseB
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
            List(parkList) { park in
                NavigationLink(park.name, value: park)
            }
            .navigationTitle("Park List")
            .navigationDestination(for: Park.self) { park in
                ParkDetailView(park: park)
            }
            
            List(fruitsList) { fruits in
                NavigationLink(fruits.name, value: fruits)
            }
            .navigationTitle("Fruits List")
            .navigationDestination(for: Fruits.self) { fruits in
                FruitsDetailView(fruits: fruits)
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
