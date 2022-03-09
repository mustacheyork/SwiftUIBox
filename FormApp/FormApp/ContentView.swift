//
//  ContentView.swift
//  FormApp
//
//  Created by Kanako Kobayashi on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    @State private var notify: Bool = false
    @State private var sound: Bool = false
    
    let fruits = ["みかん", "ぶどう", "りんご", "バナナ", "もも"]
    @State private var selection = 3
    
    var body: some View {
        Form {
            Section {
                Text("氏名：山田さくら")
                Text("Email：codecandy@example.com")

            } header: {
                // ヘッダービュー
                Text("プロフィール")
            }
            
            Section {
                Text("お支払い履歴")
                Text("アップグレード")
            } header: {
                Text("お支払い")
            }

            Section {
                // コンテンツビュー
                Toggle("通知", isOn: $notify)
                Toggle("サウンド", isOn: $sound)
            } header: {
                // ヘッダービュー
                Text("アプリの設定")
            }
            Section {
                Text("利用規約")
                Text("プライバシーポリシー")
                Text("お問い合わせ")

            } header: {
                Text("サポート情報")
            } footer: {
                Button("サインアウト") {
                    print("サインアウト")
                }
                .buttonStyle(.borderedProminent)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
