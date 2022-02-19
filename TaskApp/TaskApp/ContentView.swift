//
//  ContentView.swift
//  TaskApp
//
//  Created by Kanako Kobayashi on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    @State var inputDay: String = ""
    @State var todoName: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            TextField("曜日を入力してください",text: $inputDay)
                .padding()
            Text(todoName)
                .padding()
            Button("🔍やることチェック🔍") {
                if inputDay.isEmpty {
                    showAlert.toggle()
                } else {
                    todoName = checkDate(checkDay: inputDay)
                    inputDay = ""
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("曜日を入力してください"))
        }
    }
    
    func checkDate(checkDay: String) -> String {
        var todo: String = ""
        switch checkDay {
        case "月曜日":
            todo = "ヨガの日"
        case "火曜日":
            todo = "筋トレの日"
        case "水曜日":
            todo = "英語学習の日"
        case "木曜日":
            todo = "テニスの日"
        case "金曜日":
            todo = "ランニングの日"
        case "土曜日":
            todo = "アプリを作る"
        case "日曜日":
            todo = "Swift学習"
        default:
            todo = "曜日を間違えています🙀"
        }
        return todo
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
