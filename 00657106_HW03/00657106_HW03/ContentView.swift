//
//  ContentView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/7.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateDegree: Double = 0
    @State private var opacity: Double = 1
    @State private var show = false
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
                    
                    Section(header: Text("煮的")){
                        List{
                            ScrollView {
                            NavigationLink(destination: BraisedDishFood()) {
                                BraisedDish()
                                
                            }
                            NavigationLink(destination: NoodleShopFood()) {
                                NoodleShop()
                            }
                            }
                        }
                    }
                    Section(header: Text("煎的")){
                        List{
                            NavigationLink(destination: BafangYunjiFood()) {
                                BafangYunji()
                                
                            }
                        }
                    }
                        Section(header: Text("炸的")){
                        List{
                                NavigationLink(destination: QuanHongFood()) {
                                    QuanHong()
                                    
                                }
                                
                            }
                        }
                    
                    
                }
                
            }
                .tabItem {
                    Image(systemName: "star.fill");
                    Text("Meals")
                }
            
            VStack {
                Button(show ? "今天不想吃" : "每天都要吃") {
                self.show.toggle()
                }.animation(nil)
                if show {
                Image("青江菜")
                    .resizable()
                    .scaledToFit()
                .transition(.opacity)
                }
                else {
                    Image("青江菜")
                    .resizable()
                    .scaledToFit()
                    .hidden()
                    }
                        
                Button("最愛吃的") {
                      rotateDegree = 360
                   }
                   .font(.title)
                   Image("薯條")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(rotateDegree))
                      .animation(
                        Animation.linear(duration: 0.5)
                            .repeatForever(autoreverses: false)
                      )

                    }.animation(.easeInOut(duration: 5))
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




