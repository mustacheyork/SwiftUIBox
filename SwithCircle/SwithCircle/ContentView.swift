//
//  ContentView.swift
//  SwithCircle
//
//  Created by Kanako Kobayashi on 2023/02/24.
//

import SwiftUI

struct CircleView: View {
    let radius: CGFloat
    
    var circle: some View {
        switch radius {
        case 0..<50:
            return Circle()
                .fill(Color.red)
                .frame(width: radius * 2, height: radius * 2)
        case 50..<100:
            return Circle()
                .fill(Color.green)
                .frame(width: radius * 2, height: radius * 2)
        default:
            return Circle()
                .fill(Color.blue)
                .frame(width: radius * 2, height: radius * 2)
        }
    }
    
    var body: some View {
        VStack {
            circle
                .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            CircleView(radius: 25)
            CircleView(radius: 75)
            CircleView(radius: 125)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
