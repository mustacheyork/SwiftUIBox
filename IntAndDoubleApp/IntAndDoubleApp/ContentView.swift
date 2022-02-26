//
//  ContentView.swift
//  IntAndDoubleApp
//
//  Created by Kanako Kobayashi on 2022/02/20.
//

import SwiftUI

struct ContentView: View {
    @State var leftNumber: Int = 0
    @State var rightNumber: Double = 0.0
    @State var resultNumber: Double = 0.0
    
    var body: some View {
        VStack {
            Text("\(leftNumber) + \(rightNumber)の")
                .padding()
            Text("答えは：\(resultNumber)")
                .padding()
            Button("足し算するよ！") {
                leftNumber = Int.random(in: 1...100)
                rightNumber = Double.random(in: 1...100)
                
                resultNumber = Double(leftNumber) + rightNumber
            }
            .buttonStyle(.borderedProminent)
        }
        .font(.title)
        .onAppear() {
            leftNumber = Int.random(in: 1...100)
            rightNumber = Double.random(in: 1...100)
            
            resultNumber = Double(leftNumber) + rightNumber
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
