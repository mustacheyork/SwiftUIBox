//
//  ContentView.swift
//  NavigationStackCaseA
//
//  Created by Kanako Kobayashi on 2022/10/27.
//

import SwiftUI

struct Park: Identifiable {
    var id = UUID()
    var name: String
}

struct ContentView: View {
    let parkList: [Park] = [.init(name: "メリケンパーク"),
                            .init(name: "万博記念公園"),
                            .init(name: "奈良公園"),
                            .init(name: "代々木公園")]

    var body: some View {
        NavigationStack {
            List(parkList) { park in
                NavigationLink(park.name) {
                    ParkDetailView(park: park)
                }
            }
            .navigationTitle("公園リスト")
        }
    }
}

struct ParkDetailView: View {
    let park: Park
    
    var body: some View {
        Text(park.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
