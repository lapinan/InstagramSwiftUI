//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            SearchBar(searchText: $searchText)
                .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
