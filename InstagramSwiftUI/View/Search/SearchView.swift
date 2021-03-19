//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var isSearchText = false
    
    var body: some View {
        ScrollView {
            
            SearchBar(searchText: $searchText, isSearchText: $isSearchText)
                .padding()
            
            if isSearchText {
               UserListView()
            } else {
                PostGridView()
            }
                        
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
