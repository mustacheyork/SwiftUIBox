//
//  ContentView.swift
//  NavitationViewByButton
//
//  Created by Kanako Kobayashi on 2022/07/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("ボタン1") {
                    firstView()
                }
                .frame(width: 300, height: 100, alignment: .center)
                .background(.blue)
                .foregroundColor(.white)
                
                NavigationLink("ボタン2") {
                    secondView()
                }
                .frame(width: 300, height: 100, alignment: .center)
                .background(.blue)
                .foregroundColor(.white)

                NavigationLink("ボタン3") {
                    thiedView()
                }
                .frame(width: 300, height: 100, alignment: .center)
                .background(.blue)
                .foregroundColor(.white)

            }
        }
    }
}

struct firstView: View {
    var body: some View {
        Text("1つ目の画面")
    }
}

struct secondView: View {
    var body: some View {
        Text("2つ目の画面")
    }
}

struct thiedView: View {
    var body: some View {
        Text("3つ目の画面")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
