//
//  Recipe.swift
//  recipeCode
//
//  Created by 井川　恭輔 on 2024/11/03.
//

import SwiftUI

struct Recipe: View {
    let Width = UIScreen.main.bounds.width / 2
    let Height = UIScreen.main.bounds.height / 10
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                Spacer()
                
                NavigationLink{
                    Tyouri()
                }label: {
                    Button("調理方法"){
                    }
                    .foregroundColor(.white)
                    .frame(width: Width,
                           height: Height)
                    .background(Color.red)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .font(.title2)
                    .fontWeight(.black)
                }
                Spacer()
                
                NavigationLink{
                    Sikomi()
                }label: {
                    Button("仕込み"){
                    }
                    .foregroundColor(.white)
                    .frame(width: Width,
                           height: Height)
                    .background(Color.red)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .font(.title2)
                    .fontWeight(.black)
                }
                Spacer()
                Spacer()
            }
            
            
                .navigationTitle("レシピ")
        }
    }
}

#Preview {
    Recipe()
}
