//
//  ContentView.swift
//  NavigationStackCaseEApp
//
//  Created by Kanako Kobayashi on 2022/11/03.
//

import SwiftUI

struct Park: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct ContentView: View {
    let parkList: [Park] =  [.init(name: "メリケンパーク"),
                             .init(name: "万博記念公園"),
                             .init(name: "奈良公園"),
                             .init(name: "代々木公園")]
    
    let park = Park(name: "メリケンパーク")
    @State private var path: [Park] = []

    var body: some View {
        NavigationStack(path: $path) {

            NavigationLink(value: park) {
                Text(park.name)
            }

            .navigationDestination(for: Park.self) { park in
                ParkDetailView(park: park)
            }
            .navigationTitle("公園リスト")
        }
    }

    func showFirstPark() {
        path = [.init(name: "メリケンパーク")]
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
