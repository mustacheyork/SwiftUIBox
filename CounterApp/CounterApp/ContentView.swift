//
//  ContentView.swift
//  CounterApp
//
//  Created by Kanako Kobayashi on 2022/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    
    var body: some View {
        ZStack {
            if counter == 0 || counter % 3 != 0 {
                Color.gray
                     .ignoresSafeArea()
            } else {
                Color.yellow
                     .ignoresSafeArea()
            }

            VStack(spacing: 100) {
                Text("\(counter)")
                    .font(.largeTitle)

                HStack(spacing: 100) {
                    Button("UP") {
                        counter += 1
                    }
                    .background(
                        Circle()
                            .fill(Color.pink)
                            .frame(width: 120, height: 120)
                    )

                    Button("Down") {
                        counter -= 1
                    }
                    .background(
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 120, height: 120)
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
