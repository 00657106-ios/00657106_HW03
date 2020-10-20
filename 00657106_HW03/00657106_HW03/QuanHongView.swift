//
//  QuanHongView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI
struct QuanHongView: View {
    var body: some View {
        NavigationView {
            VStack{
            Text("海大附近炸物專賣，價格便宜且鹹酥雞這的很好吃，除了食材美味之外店家的蔬菜是有機蔬菜吃起來，食用起來相對安心。")
                Image("鹹酥雞")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
            }
        }
    }
}

struct QuanHongFood: View {
    var body: some View {
        VStack {
            TabView {
                ForEach(1..<5) { (index) in
                    Image("QuanHongFood\(index)")
                        .resizable()
                        .scaledToFit()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(height: 300)
            Text("去全虹固定吃")
                .font(.system(size: 40))
            Image("鹹酥雞")
                .resizable()
                .scaledToFit()
        }
    }
}
