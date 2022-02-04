//
//  ContentView.swift
//  NetworkCheck
//
//  Created by Kanako Kobayashi on 2022/01/06.
//

import SwiftUI
import Network

struct ContentView: View {
    
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "com.sample")
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some View {
        Text("hoge")
        .onAppear(){
            print("--1--")
            monitor.pathUpdateHandler = { path in
                print("--2--")
                if path.status == .satisfied {
                    print("--3--")
                    print("Connected")
                } else {
                    print("--4--")
                    print("Not Connected")
                }
            }
            monitor.start(queue: queue)
            print("--5--")
        }
        .onChange(of: scenePhase) { phase in
            if phase == .background {
                print("バックグラウンド！")
            }
            if phase == .active {
                print("フォアグラウンド！")
                monitor.pathUpdateHandler = { path in
                    print("--2--")
                    if path.status == .satisfied {
                        print("--3--")
                        print("Connected")
                    } else {
                        print("--4--")
                        print("Not Connected")
                    }
                }
            }
            if phase == .inactive {
                print("バックグラウンドorフォアグラウンド直前")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
