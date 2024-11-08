//
//  Menu.swift
//  recipeCode
//
//  Created by 井川　恭輔 on 2024/11/03.
//

import SwiftUI

struct Menu: View {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                ForEach(1...12, id: \.self) { num in
                    Image("menu\(num)")
                        .resizable()
                        .frame(width: Width,height: Height)
                }
                
                
                
                
                    
            
                    
                        .navigationTitle("メニュー")
                
            }
        }
    }
}

#Preview {
    Menu()
}
