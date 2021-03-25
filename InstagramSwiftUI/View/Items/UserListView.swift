//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct UserListView: View {
    @Binding var searchText: String
    @ObservedObject var viewModel: SearchViewModel
    
    var users: [User] {
        return searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 15) {
                ForEach(users) { user in
                    NavigationLink(destination: ProfileView()) {
                        UserCell(user: user)
                            .padding(.top, 4)
                    }
                }
            }
        }
    }
}

