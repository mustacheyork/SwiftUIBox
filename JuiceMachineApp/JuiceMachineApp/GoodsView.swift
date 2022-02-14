//
//  GoodsView.swift
//  JuiceMachineApp
//
//  Created by Kanako Kobayashi on 2022/02/14.
//

import SwiftUI

struct GoodsView: View {
    let displayMassage: String
    
    var body: some View {
        Text(displayMassage)
    }
}

struct GoodsView_Previews: PreviewProvider {
    static var previews: some View {
        GoodsView(displayMassage: "をどうぞ")
    }
}
