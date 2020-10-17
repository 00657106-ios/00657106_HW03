//
//  NoodleShop.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI

struct NoodleShop : View {
    var body: some View {
            HStack {
                Image("牛肉麵")
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
