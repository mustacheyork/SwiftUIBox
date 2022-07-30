//
//  ContentView.swift
//  MinAndMaxApp
//
//  Created by Kanako Kobayashi on 2022/02/26.
//

import SwiftUI

struct ContentView: View {
    
    let dispMessage: String = """
                              最小値と最大値を調べます。
                              カンマ区切りで数字を入力してください。
                              """
    let minimumValue: Int = 0
    let maximumValue: Int = 0
    
    @State var result = (min: 0, max: 0)
    @State var inputValues: String = ""
    @State var convertValues: [Int] = []
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text(dispMessage)
            TextField("例：25,50,10,15,40,20", text: $inputValues)
                .padding()
            
            Button("🔍 check it 🔍") {
                if chanCastInt(targetArray: inputValues) {
                    let numberList = addIntArray(stringValues: inputValues)
                    result = selectMinAndMax(inputNumbers: numberList)
                } else {
                    showAlert.toggle()
                    inputValues = ""
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Text("最小値：\(result.min) 最大値：\(result.max)")
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("空白のないカンマ区切りの数字を入力してください"))
        }
        
    }
    
    // 入力値がInt型に型変換できるかチェック
    func chanCastInt(targetArray: String) -> Bool {
        let array = targetArray.components(separatedBy: ",")
        
        for value in array {
            if let _ = Int(value) {
            } else {
                return false
            }
        }
        return true
    }

    // 入力値をInt型に型変換して配列に追加
    func addIntArray(stringValues: String) -> [Int] {
        let array = inputValues.components(separatedBy: ",")
        var convertValues: [Int] = []
        
        for value in array {
            if let number = Int(value) {
                convertValues.append(number)
            }
        }
        return convertValues
    }

    // 最小値・最大値をタプルで返却
    func selectMinAndMax(inputNumbers: [Int]) -> (min: Int, max : Int) {
        var minimumValue: Int = inputNumbers.first!
        var maximumValue: Int = inputNumbers.first!

        for number in inputNumbers {
            if number < minimumValue {
                minimumValue = number
            } else if number > maximumValue {
                maximumValue = number
            }
        }

        return (min: minimumValue, max: maximumValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
