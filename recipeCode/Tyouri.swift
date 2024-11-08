//
//  Tyouri.swift
//  recipeCode
//
//  Created by 井川　恭輔 on 2024/11/04.
//

import SwiftUI

struct Tyouri: View {
    struct Field: Identifiable {
        let id = UUID()
        let name: String
        var children: [Field]? = nil
    }
    
    let fields = [Field(name: "drink", children:
                            [Field(name:"コーヒー"),
                             
                             Field(name: "紅茶")]),
                  Field(name: "food",children: [Field(name:"カレー"),
                                                
                       Field(name: "ハラミ丼")])
    ]
    var body: some View {
        
        NavigationStack{
            NavigationLink{Sikomi()}label: {
                
                
                List(fields, children: \.children) { field in
                    Text(field.name)
                }
                
                
            }
                .navigationTitle("調理方法")
            
        }
    }
}

#Preview {
    Tyouri()
}
