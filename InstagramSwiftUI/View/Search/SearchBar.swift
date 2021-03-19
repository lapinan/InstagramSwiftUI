//
//  SearchBar.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        VStack {
            TextField("Search...", text: $searchText)
                .padding(8)
                .padding(.horizontal, 30)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                )
            
            Spacer()
            
            // post gird item
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("search"))
    }
}
