//
//  BraisedDist.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI

struct BraisedDish : View {
    var body: some View {
            HStack {
                Image("丐幫滷味")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                VStack(alignment: .leading) {
                    Text("丐幫滷味")
                    Text("海大分舵")
                }
                Spacer()
            }
        }
    }
