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

            HStack {
                Image("對的時間點")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                VStack(alignment: .leading) {
                    
                    Text("對的時間點")
                    Text("林俊傑")
                    .navigationTitle("全虹")
                }
                Spacer()
            }
            .navigationTitle("返回")
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
