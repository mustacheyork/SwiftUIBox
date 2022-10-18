//
//  ContentView.swift
//  NavigationView
//
//  Created by Kanako Kobayashi on 2022/03/08.
//

import SwiftUI

struct FirstView: View {
    
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            NavigationView {
                NavigationLink(destination: SecondView(isFirstViewActive: $isActive), isActive: $isActive) {
                    VStack {
                        Button(action: {
                            self.isActive = true
                        }, label: {
                            Text("Forward to Second View.")
                        })
                        Spacer()
                    }
                }
                .navigationBarTitle("First View")
            }
        }
    }
}

struct SecondView: View {
    
    @State private var isActive = false
    @Binding var isFirstViewActive: Bool
    
    var body: some View {
        NavigationLink(destination: ThirdView(isFirstViewActive: $isFirstViewActive), isActive: $isActive) {
            Button(action: {
                self.isActive = true
            }, label: {
                Text("Forward to Third View.")
            })
        }
        .isDetailLink(false)
        .navigationBarTitle("Second View")
    }
}

struct ThirdView: View {
    
    @Binding var isFirstViewActive: Bool
    
    var body: some View {
        Button(action: {
            self.isFirstViewActive = false
        }, label: {
            Text("Back to First View.")
        })
        .navigationBarTitle("Third View")
    }
}
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
