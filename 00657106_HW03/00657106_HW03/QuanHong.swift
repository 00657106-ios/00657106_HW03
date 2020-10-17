//
//  QuanHong.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI

struct QuanHong : View {
    var body: some View {
            HStack {
                Image("鹹酥雞")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                VStack(alignment: .leading) {
                    Text("全虹")
                    Text("鹹酥雞")
                }
                Spacer()
            }
        }
    }
