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
                              例：25,50,10,15,40,20
                              """
    let minimumValue: Int = 0
    let maximumValue: Int = 0
    
    @State var result = (min: 0,max: 0)
    @State var inputValues: String = ""
    @State var convertValues: [Int] = []
    
    var body: some View {
        VStack {
            Text(dispMessage)
            TextField("カンマ区切りで数字を入力", text: $inputValues)
                .padding()
            
            Button("🔍 check it 🔍") {
                print( checkArray(targetArray: inputValues))
                if checkArray(targetArray: inputValues) {
                    let numberList = convertStringToInt(stringValues: inputValues)
                    result = selectMinAndMax(inputNumbers: numberList)
                } else {
                    print("入力値エラー")
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Text("最小値：\(result.min) 最大値：\(result.max)")
        }
        
    }
    
    func checkArray(targetArray: String) -> Bool {
        let array = targetArray.components(separatedBy: ",")
        
        for value in array {
            if let _ = Int(value) {
            } else {
                return false
            }
        }
        return true
    }

    func convertStringToInt(stringValues: String) -> [Int] {
        let array = inputValues.components(separatedBy: ",")
        var convertValues: [Int] = []
        
        for value in array {
            if let number = Int(value) {
                convertValues.append(number)
            }
        }
        return convertValues
    }

    func selectMinAndMax(inputNumbers: [Int]) -> (min: Int, max : Int) {
        var minimumValue: Int = inputNumbers[0]
        var maximumValue: Int = inputNumbers[0]

        for number in inputNumbers {
            if number < minimumValue {
                minimumValue = number
            } else if number > maximumValue {
                maximumValue = number
            }
        }

        return (min: minimumValue,max: maximumValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
