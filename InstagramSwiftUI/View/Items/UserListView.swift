//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 15) {
                ForEach(0 ..< 5) { _ in
                    NavigationLink(destination: ProfileView()) {
                        UserCell()
                            .padding(.top, 4)
                    }
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
