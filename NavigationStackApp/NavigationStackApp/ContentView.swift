//
//  ContentView.swift
//  Test
//
//  Created by Kanako Kobayashi on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var isYesView = false
    @State var isNoView = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Button {
                    isYesView.toggle()
                } label: {
                    Text("Yes")
                }

                Button {
                    isNoView.toggle()
                } label: {
                    Text("Yes")
                }
            }
            .navigationDestination(isPresented: $isYesView) {
                YesView()
            }
            .navigationDestination(isPresented: $isNoView) {
                NoView()
            }
            .navigationTitle("Diagnostic Chart")
        }
    }
}

struct YesView: View {
    var body: some View {
        Text("Say Yes")
    }
}

struct NoView: View {
    var body: some View {
        Text("Say No")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
