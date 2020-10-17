//
//  Resteraunt.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//


import SwiftUI

struct ResterauntView: View {
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
                }
                Spacer()
            }
            .navigationTitle("返回")
        }
    }
}
