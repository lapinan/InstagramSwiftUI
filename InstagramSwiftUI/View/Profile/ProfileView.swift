//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ProfileHeaderView(viewModel: viewModel)
                    .padding(.top)
                
                PostGridView()
            }
        }
    }
}


