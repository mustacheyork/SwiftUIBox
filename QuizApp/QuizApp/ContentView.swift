//
//  ContentView.swift
//  QuizApp
//
//  Created by Kanako Kobayashi on 2022/03/04.
//

import SwiftUI

struct ContentView: View {
    
    let quiz: [String: String] = ["question": "iPhoneを開発する言語は？", "first": "Swift", "second": "Kotlin", "third": "Java", "answer" : "first"]
    @State var question: String = ""
    @State var selection: String = ""
    @State var judge: String = "不正解"
    
    var body: some View {
        VStack {
            Text("\(quiz["question"] ?? "エラー")")
            VStack(spacing: 20) {

                Button("\(quiz["first"] ?? "エラー")") {
                    if quiz["answer"] == "first" {
                        judge = "正解"
                    } else {
                        judge = "不正解"
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("\(quiz["second"] ?? "エラー")") {
                    if quiz["answer"] == "second" {
                        judge = "正解"
                    } else {
                        judge = "不正解"
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("\(quiz["third"] ?? "エラー")") {
                    if quiz["answer"] == "third" {
                        judge = "正解"
                    } else {
                        judge = "不正解"
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
            Text(judge)
                .padding()
            
            Button("次の問題") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
