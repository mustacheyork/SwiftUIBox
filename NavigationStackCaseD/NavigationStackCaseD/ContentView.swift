//
//  ContentView.swift
//  NavigationStackCaseD
//
//  Created by Kanako Kobayashi on 2022/10/28.
//

import SwiftUI

struct Park: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

final class RouterNavigationPath: ObservableObject {
    @Published var path =  NavigationPath()
}

struct ContentView: View {
    @EnvironmentObject var router = RouterNavigationPath()
    
    let parkList: [Park] =  [.init(name: "メリケンパーク"),
                             .init(name: "万博記念公園"),
                             .init(name: "奈良公園"),
                             .init(name: "代々木公園")]
    
    
    @State private var path: [Park] = []

    var body: some View {
        NavigationStack(path: $path) {
            List(parkList) { park in
                NavigationLink(value: park) {
                    Text(park.name)
                }
            }
            .navigationDestination(for: Park.self) { park in
                ParkDetailView2(park: park)
            }
            .navigationTitle("公園リスト")
        }
        .environmentObject(router)
        .onChange(of: path) { newValue in
            print(newValue)
        }
        .onAppear {
            showFirstPark()
        }
    }

    func showFirstPark() {
        path = [.init(name: "メリケンパーク"), .init(name: "万博記念公園")]
    }
}

struct ParkDetailView: View {
    let park: Park
    
    var body: some View {
        
        VStack {
            Text(park.name)
        }
    }
}

struct ParkDetailView2: View {
    let park: Park
    @EnvironmentObject var router: RouterNavigationPath

    var body: some View {
        Group {
            Text("\(park.name)にようこそ")
            Button("戻る"){
                router.path.removeLast()
            }
        }
        .onAppear {
            print("router", router)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
