//
//  ContentView.swift
//  PrimeNumberApp
//
//  Created by Kanako Kobayashi on 2022/02/12.
//

import SwiftUI

struct ContentView: View {
    @State var inputNumber: String = ""
    @State var resultNumbers: [Int] = []
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            TextField("数字を入力してください", text: $inputNumber)
                .padding()
            
            Spacer().frame(height: 10)
            HStack {
                Button("約数チェック") {
                    print("aaa")
                    if let inputNumber: Int = Int(inputNumber) {
                        resultNumbers = divisorNumbers(baseNumber: inputNumber)
                    } else {
                        showAlert.toggle()
                    }
                    inputNumber = ""
                }
                .buttonStyle(.borderedProminent)

                Button("素数チェック") {
                    if let inputNumber: Int = Int(inputNumber) {
                        resultNumbers = primeNumbers(maxNumber: inputNumber)
                    } else {
                        showAlert.toggle()
                    }
                    inputNumber = ""
                }
                .buttonStyle(.borderedProminent)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("数字を入力してください"))
            }
            
            Spacer()
            if resultNumbers.count != 0 {
                List(resultNumbers, id: \.self) { number in
                    Text("\(number)")
                }
            }
        }
    }
    
    func divisorNumbers(baseNumber: Int) -> [Int] {
        var divisorNumberList: [Int] = []
        for number in 1...baseNumber {
            if baseNumber % number ==  0 {
                divisorNumberList.append(number)
            }
        }
        return divisorNumberList
    }
    
    func primeNumbers(maxNumber: Int) -> [Int] {
        var primeNumberList: [Int] = []
        
        for baseNumber in 1...maxNumber {
            var count = 0
            for number in 1...baseNumber {
                if baseNumber % number ==  0 {
                    count = count + 1
                }
            }
            if count == 2 {
                primeNumberList.append(baseNumber)
            }
        }
        
        return primeNumberList
    }
}

private struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
