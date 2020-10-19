//
//  NoodleShopView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI
struct NoodleShopView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 50) {
                Image("牛肉麵")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipped()
               Text("餐點便宜味道也鄉道不錯，燙青菜給的份量與其他地方相比多非常的多，如果月底沒錢可以常去吃，可以吃的很飽又便宜。")
            }

        }
    }
}

struct NoodleShopFood: View {
    
    let foods = [
        "燙青菜",
        "牛肉麵",
        "當歸羊肉麵",
        
    ]
    
    var body: some View {
        
        
        VStack {
            ScrollView(.horizontal) {
                let rows = [GridItem()]
                LazyHGrid(rows: rows) {
                    ForEach(foods.indices) { (index) in
                        VStack {
                            Image(foods[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipped()
                            Text(foods[index])
                        }
                        .overlay(
                            Image(systemName: "\(index+1).circle.fill")
                                .font(.largeTitle)
                            , alignment: .topLeading)
                    }
                }
                
            }
            .fixedSize(horizontal: false, vertical: true)
            Image("牛肉麵")
                .resizable()
                .scaledToFit()
        }
    }
}
