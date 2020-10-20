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
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .rotationEffect(.degrees(rotateDegree))
                      .animation(
                        Animation.linear(duration: 0.5)
                            .repeatCount(3, autoreverses: false)
                      )

                    }.animation(.easeInOut(duration: 5))
                .tabItem {
                    Image(systemName: "heart.fill");
                    Text("favorite")
                }
            
            NavigationView {
                VStack {
                    
                    List{
                        
                        Link(destination: URL(string: "http://maps.apple.com/?address=202基隆市中正區祥豐街829號1F".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!, label: {
                                    VStack {
                                        Image("丐幫滷味")
                                            .resizable()
                                            .scaledToFit()
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Link(destination: URL(string: "http://maps.apple.com/?address=基隆市中正區中正路捌壹捌面馆".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!, label: {
                                    VStack {
                                        Image("牛肉麵")
                                            .resizable()
                                            .scaledToFit()
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Link(destination: URL(string: "http://maps.apple.com/?address=基隆市中正區中正路八方雲集鍋貼水餃專賣店(基隆中正店)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!, label: {
                                    VStack {
                                        Image("鍋貼")
                                            .resizable()
                                            .scaledToFit()
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Link(destination: URL(string: "http://maps.apple.com/?address=全虹鹽酥雞202基隆市中正區祥豐街No. 841號".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!, label: {
                                    VStack {
                                        Image("鹹酥雞")
                                            .resizable()
                                            .scaledToFit()
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        
                }.navigationTitle("餐廳位置")}
            
            }.tabItem {
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




