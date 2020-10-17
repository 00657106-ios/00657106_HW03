//
//  BraisedDishView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI
struct BraisedDishView: View {
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
                    .navigationTitle("丐幫滷味")
                    
                }
                Spacer()
            }
            .navigationTitle("返回")
        }
        
    }
}

