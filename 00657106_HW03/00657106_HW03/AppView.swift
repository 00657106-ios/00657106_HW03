//
//  AppView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/16.
//

import Foundation
import SwiftUI

struct AppView: View {
var body: some View {
TabView {
SongList()
.tabItem {
    Image(systemName: "music.house.fill")

Text("情歌")

}
ContentView()
.tabItem {
Image(systemName: "info.circle.fill")

Text("About")

}
}
}
}
