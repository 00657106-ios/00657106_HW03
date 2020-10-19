//
//  BafangYunjiView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI
struct BafangYunjiView: View {
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
                    .navigationTitle("八方雲集")
                }
                Spacer()
            }
            .navigationTitle("返回")
        }
    }
}

struct BafangYunjiFood: View {
    var body: some View {
        
            HStack {
                friedDumpling()
                VStack(alignment: .leading) {
                    
                    Text("每次一定都吃")
                    Text("鍋貼")
                }
                Spacer()
                  }

       
    }
}

struct friedDumpling: View {
    var body: some View {
        Image("鍋貼")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
    }
}
