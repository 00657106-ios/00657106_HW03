//
//  BafangYunjiView.swift
//  00657106_HW03
//
//  Created by User13 on 2020/10/17.
//

import Foundation
import SwiftUI

struct food {
   var name: String
   var description: String
}

struct FoodText: View {
    var myfood: food
    var body: some View {
        print("create \(myfood.name)")
        return Text("\(myfood.name) \(myfood.description)")
            .padding()
    }
}

struct BafangYunjiFood: View {
    var body: some View {
        let foods = [food(name: "招牌鍋貼", description: "用煎的dumpling"), food(name: "招牌水餃", description: "用煮的dumpling")]
                
        List(foods, id: \.name) { (food) in
            FoodText(myfood: food)
                    }
        Image("鍋貼")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipped()
        Image("水餃")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipped()
    }
}

struct BafangYunjiView: View {
    var body: some View {
        
        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            HStack {
                    friedDumpling()
                    VStack(alignment: .leading) {
                        
                        Text("每次一定都吃")
                        Text("鍋貼")
                    }
                    Spacer()
            }
        }

       
    }
}


struct friedDumpling: View {
    var body: some View {
        Image("鍋貼")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
    }
}
