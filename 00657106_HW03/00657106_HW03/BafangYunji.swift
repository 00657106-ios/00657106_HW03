//
//  BafangYunji.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI

struct BafangYunji : View {
    var body: some View {
            HStack {
                Image("八方")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                VStack(alignment: .leading) {
                    Text("八方雲集")
                    Text("基隆中正店")
                }
                Spacer()
            }
        }
    }
