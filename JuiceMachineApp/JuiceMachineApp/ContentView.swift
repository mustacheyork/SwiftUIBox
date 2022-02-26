//
//  ContentView.swift
//  JuiceMachineApp
//
//  Created by Kanako Kobayashi on 2022/02/14.
//

import SwiftUI

struct ContentView: View {
    
    private let juiceList = ["コーラ", "オレンジジュース", "お茶"]
    private let juicePrice = 120
    
    @State private var coin: String = ""
    @State private var juiceSelection = "コーラ"
    @State private var checkMessage = ""
    @State private var showAlert = false
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            Text("ジュースを選択").font(.title)
            Picker(selection: $juiceSelection, label: Text("ジュースを選択")) {
                ForEach(juiceList, id: \.self) { juice in
                    Text(juice)
                }
            }
            .pickerStyle(WheelPickerStyle())
            
            Spacer()
            TextField("お金を入れてください", text: $coin)
                .padding()
                .keyboardType(.decimalPad)
            
            Button("購入") {
                if let inputCoin = Int(coin) {
                    purchaseJuice(juiceName: juiceSelection, coin: inputCoin)
                    coin = ""
                } else {
                    showAlert.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("数字を入力してください"))
        }
        .sheet(isPresented: $showSheet, content: {
           GoodsView(displayMassage: checkMessage)
        })
        .onChange(of: showSheet) { showSheet in
        }
    }
        
    func purchaseJuice(juiceName: String, coin: Int) {
        let change = coin - juicePrice
        if change >= 0 {
            checkMessage = """
                \(juiceName)をどうぞ！
                おつりは\(change)円です。
            """
        } else {
            checkMessage = """
                \(juiceName)が買えません！
                あと\(-change)円必要です。
            """
        }
        showSheet.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
