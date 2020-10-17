//
//  SongRow.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/14.
//

import SwiftUI

struct BraisedDish: View {
    var body: some View {
        HStack {
            Image("滷味")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text("丐幫滷味")
            }
            Spacer()
        }
    }
}

struct NoodleShop: View {
    var body: some View {
        HStack {
            Image("麵店")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text("捌壹捌麵店")
            }
            Spacer()
        }
    }
}

struct BafangYunji: View {
    var body: some View {
        HStack {
            Image("八方雲集")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text("八方雲集")
            }
            Spacer()
        }
    }
}

struct QuanHong: View {
    var body: some View {
        HStack {
            Image("全虹")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text("全虹炸物")
            }
            Spacer()
        }
    }
}
