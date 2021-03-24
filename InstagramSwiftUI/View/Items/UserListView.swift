//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel: SearchViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 15) {
                ForEach(viewModel.users) { user in
                    NavigationLink(destination: ProfileView()) {
                        UserCell(username: user.username, fullname: user.fullname)
                            .padding(.top, 4)
                    }
                }
            }
        }
    }
}

