//
//  ContentView.swift
//  QuizApp
//
//  Created by Kanako Kobayashi on 2022/03/04.
//

import SwiftUI

struct ContentView: View {
    
    private let quiz: [[String: String]] = [
        ["question": "iOSを開発する言語は？",
         "first": "Swift",
         "second": "Kotlin",
         "third": "Java",
         "answer" : "first"],
        ["question": "Appleの創設者は？",
         "first": "Jeff Bezos",
         "second": "Bill Gates",
         "third": "Steve Jobs",
         "answer" : "third"],
        ["question": "Appleが毎年開催しているカンファレンスは？",
         "first": "WWDC",
         "second": "JAWS-UG",
         "third": " Google I/O",
         "answer" : "first"],
    ]
    
    @State private var question: String = ""
    @State private var selection: Int = 0
    @State private var judge: Bool = false
    @State private var showResult = false
    
    var body: some View {
        VStack {

            Text("\(quiz[selection]["question"] ?? "エラー")")
            VStack(spacing: 20) {

                Button("\(quiz[selection]["first"] ?? "エラー")") {
                    if quiz[selection]["answer"] == "first" {
                        judge = true
                    } else {
                        judge = false
                    }
                    showResult.toggle()
                }
                .buttonStyle(.borderedProminent)
                .disabled(showResult)
                
                Button("\(quiz[selection]["second"] ?? "エラー")") {
                    if quiz[selection]["answer"] == "second" {
                        judge = true
                    } else {
                        judge = false
                    }
                    showResult.toggle()
                }
                .buttonStyle(.borderedProminent)
                .disabled(showResult)
                
                Button("\(quiz[selection]["third"] ?? "エラー")") {
                    if quiz[selection]["answer"] == "third" {
                        judge = true
                    } else {
                        judge = false
                    }
                    showResult.toggle()
                }
                .buttonStyle(.borderedProminent)
                .disabled(showResult)
            }
            .padding()
            let _ = print("selection = \(selection)")
            if showResult {
                let _ = print("selection = \(selection)")
                judge ? Text("⭕️") : Text("❌")
            }
            
            Button("次の問題") {
                selection = randomQuizNumber()
                showResult.toggle()
            }
            .padding()

        }
        .font(.largeTitle)
        .padding()
        .onAppear{
            selection = randomQuizNumber()
        }
    }
    
    func randomQuizNumber() -> Int {
        Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
