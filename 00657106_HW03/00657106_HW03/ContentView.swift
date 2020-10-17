//
//  ContentView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/7.
//

import SwiftUI

struct ContentView: View {
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    var body: some View {
        TabView{
            NavigationView {
                VStack {
                    List{
                    NavigationLink(destination: BraisedDishView()) {
                        BraisedDish()
                        
                    }
                    NavigationLink(destination: NoodleShopView()) {
                        NoodleShop()
                        
                    }
                    NavigationLink(destination: BafangYunjiView()) {
                        BafangYunji()
                            
                        }
                    NavigationLink(destination: QuanHongView()) {
                        QuanHong()
                            
                        }
                        
                        
                }.navigationTitle("常吃的餐廳列表")}
            }.tabItem {Image(systemName: "house.fill"); Text("Restaurant") }
            NavigationView {
                VStack {
                    List{
                    NavigationLink(destination: QuanHongFood()) {
                        QuanHong()
                        
                    }
                        
                    }
                    
                }
                
            }
                .tabItem {
                    Image(systemName: "star.fill");
                    Text("Meals")
                }
            VStack {
                        Button("每天一定要吃蔬菜") {
                            moveDistance += 100
                            opacity -= 0.2
                            
                        }
                        .font(.title)
                        HStack {
                            Image("青江菜")
                                .resizable()
                                .scaledToFit()
                                .offset(x: moveDistance, y: 0)
                                .opacity(opacity)
                                .animation(.spring(dampingFraction: 0.1))
                            Spacer()
                        }
                        Button("今天忘記吃蔬菜") {
                            moveDistance -= 100
                            opacity += 0.2
                }
                    }
                .tabItem {
                    Image(systemName: "heart.fill");
                    Text("favorite")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "location.fill");
                    Text("location")
                }
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.sizeThatFits)
        }
    }
}






