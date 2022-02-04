//
//  ContentView.swift
//  FileManager
//
//  Created by Kanako Kobayashi on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            /// ①プロジェクト内にある".env"のパス取得
            guard let fileURL = Bundle.main.url(forResource: ".env", withExtension: nil)  else {
                fatalError("ファイルが見つからない")
            }
             
            /// ②capital.txtファイルの内容をfileContents:Stringに読み込み
            guard let fileContents = try? String(contentsOf: fileURL) else {
                fatalError("ファイル読み込みエラー")
            }
                    
            /// ③ファイルの内容を"\n"で分割。
            let countries = fileContents.components(separatedBy: "\n")
                    
            /// ④１行づつ出力
            for key in countries {
                print(key)
            }
             
        }
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
