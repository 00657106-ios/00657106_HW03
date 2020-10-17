//
//  ContentView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/7.
//

import SwiftUI

struct restureant: View {
@State private var show = false
var body: some View {
VStack {
Button(show ? "hide" : "show") {
self.show.toggle()
}
.animation(nil)
if show {
    Image("bird")
.transition(.asymmetric(insertion: .scale,
removal: .slide))
} else {
Image("bird")
.hidden()
}
}
.animation(.easeInOut(duration: 5))
}
}




