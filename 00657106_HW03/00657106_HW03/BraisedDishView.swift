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
            TextEditor(text: .constant("""
            創立於1989年 從小吃攤起家的滷味傳奇
            「丐幫滷味」，是創辦人從看金庸小說所獲得的靈感。
            由於丐幫是天下第一大幫，有人的地方就有丐幫，所以創辦人自我期許要將台灣滷味的美味發揚光大到全世界，也希望「丐幫滷味」可以成為天底下最具代表性的台灣食品品牌。
            為了強調丐幫的印象，連內用的碗也都故意製作出缺角的樣子，把玉山山峰的形狀融入到特製的碗中。
            叫號的名牌也頗具巧思，應用武俠小說中知名的主人翁的名字替代原本的號碼牌，讓民眾在點餐時增添許多的樂趣。
            目前坊間常可看到的加熱滷味烹調方式，也是由「丐幫滷味」首創，經過多次實驗後可與飯、面等主食搭配食用，更具獨特的風味。不同於市場上所吃到的滷味，只靠著調味料來展現味道，
            「丐幫滷味」的每一道都入味，不需要添加任何的醬料也能讓人食指大動、流連忘返。每天由ISO 22000、HACCP中央廚房供應全台灣加盟商相關的食材，製作完成後急速冷凍，在低溫環境下運送至各加盟店，以確保滷味的美味與新鮮。
            「丐幫滷味」，透過看似平凡的食品，開啟了一段不平凡的黃金時代，展現出台灣道地美食的堅持。
            """
            ))
            .accentColor(.clear)
            .frame(width: 300, height: 400)
        }
    }
    
}

struct BraisedDishFood: View {
    let foods = [
            "培根牛",
            "細粉",
            "青椒",
            "魚卵捲",
            "青江菜",
            ]
    var body: some View {
        ScrollView(.vertical) {
                    let columns = [GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(foods.indices) { (index) in
                            VStack {
                                Image(foods[index])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipped()
                                Text(foods[index])
                            }
                            .overlay(
                                Image(systemName: "\(index+1).circle.fill")
                                    .font(.largeTitle)
                                , alignment: .topLeading)
                        }
                    }
                    
                }
    }
    
}
