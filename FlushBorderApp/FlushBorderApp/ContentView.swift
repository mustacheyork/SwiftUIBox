//
//  ContentView.swift
//  FlushBorderApp
//
//  Created by Kanako Kobayashi on 2022/08/01.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .border(isShowingRed ? .red: .white, width: 20)
        .onReceive(timer) { _ in
            isShowingRed.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
