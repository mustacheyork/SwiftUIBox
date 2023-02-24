//
//  ContentView.swift
//  Test
//
//  Created by Kanako Kobayashi on 2023/02/24.
//

import SwiftUI

struct ContentView: View {
    let lists = ["質問",
                "長めの質問",
                "長め長め長め長め長め長めの質問",
                "長め長め長め長め長め長め長め長め長めの質問",
                "長め長め長め長め長め長め長め長め長めの質問"
    ]
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(lists, id: \.self) { text in
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(width: 320, height: 60)
                        .shadow(color: Color.gray, radius: 2, x: 0, y: 0)
                        .opacity(0.3)
                    HStack {
                        Circle()
                            .fill(.orange)
                            .frame(width: 28, height: 28)
                            .padding(.leading, 5)
                        Text(text)
                            .foregroundColor(.black)
                            .lineLimit(nil)
                            .frame(width: 240, height: 60, alignment: .leading)
                            .padding(.trailing, 5)
                    }
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
