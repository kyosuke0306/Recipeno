//
//  ContentView.swift
//  recipeCode
//
//  Created by 井川　恭輔 on 2024/11/03.
//

import SwiftUI

struct ContentView: View {
    let Width = UIScreen.main.bounds.width / 3
    let Height = UIScreen.main.bounds.height
    
    
    var body: some View {
        NavigationStack{
            Spacer()
            Spacer()
                
            Text("RECIPENO")
                .fontWeight(.black )
                .font(.largeTitle)
                
            
            Image(systemName: "frying.pan")
                
                    .fontWeight(.black )
                    .font(.largeTitle)
            Spacer()
            
            
            HStack{
                
                VStack {
                    
                    
                    NavigationLink{
                        Recipe()
                    }label: {
                        Button("レシピ"){
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: Width,
                               height: Width)
                        .background(Color.red)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .font(.title2)
                        .fontWeight(.black)
                    }
                    
                    NavigationLink{
                        Communicate()
                    }label: {
                        Button("連絡"){
                        }
                        .foregroundColor(.white)
                        .frame(width: Width,
                               height: Width)
                        .background(Color.green)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .font(.title2)
                        .fontWeight(.black)
                    }
                    
                }
                
                VStack {
                    NavigationLink{
                        Menu()
                    }label: {
                        
                        Button("メニュー"){
                        }
                        .foregroundColor(.white)
                        .frame(width: Width,
                               height: Width)
                        .background(Color.yellow)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .font(.title2)
                        .fontWeight(.black)
                    }
                    NavigationLink{
                        Manual()
                    }label: {
                        Button("マニュアル"){
                        }
                        .foregroundColor(.white)
                        .frame(width: Width,
                               height: Width)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .font(.title2)
                        .fontWeight(.black)
                    }
                }
            }
            .navigationTitle("")
            
            Spacer()
            Spacer()
        }
        
    }
    
}

#Preview {
    ContentView()
}
