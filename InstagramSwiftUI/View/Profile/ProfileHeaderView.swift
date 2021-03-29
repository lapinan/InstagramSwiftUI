//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                KFImage(URL(string: viewModel.user.profileImageURL))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                HStack {
                    Spacer()
                    
                    UserStatView()
                    
                    Spacer()
                    
                    UserStatView()
                    
                    Spacer()
                    
                    UserStatView()
                }
            }.padding(.horizontal)
            
            Text(viewModel.user.username)
                .font(.system(size: 15, weight: .semibold))
                .padding([.top, .bottom, .leading, .trailing])
            Text("Gotham's Dark Knight || Billionare")
                .font(.system(size: 15))
                .padding([.leading, .trailing])
            
            ActionButtonsView(viewModel: viewModel)
                .padding([.top, .bottom])
        }
    }
}


