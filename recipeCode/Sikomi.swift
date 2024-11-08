//
//  Sikomi.swift
//  recipeCode
//
//  Created by 井川　恭輔 on 2024/11/04.
//

import SwiftUI

struct Sikomi: View {
    @State private var searchText = ""
    let allItems = ["あpple", "Banana", "Orange", "Grapes", "Strawberry"] // 表示するデータの元となるリスト
    var filteredItems: [String] {
        if searchText.isEmpty {
            return allItems // 検索テキストが空の場合は全ての項目を表示
        } else {
            return allItems.filter { $0.localizedCaseInsensitiveContains(searchText) } // 検索テキストに基づいてフィルタリング
        }
    }
    var body: some View {
        NavigationStack{
            List(filteredItems, id: \.self) { item in // フィルタリングされたリストを表示
                Text(item)
            }
            .searchable(text: $searchText, prompt: "検索")
                .navigationTitle("仕込み")
        }
    }
}

#Preview {
    Sikomi()
}
