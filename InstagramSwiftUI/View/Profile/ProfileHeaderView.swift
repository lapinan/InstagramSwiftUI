//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("batman")
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
            
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.top, .bottom, .leading, .trailing])
            Text("Gotham's Dark Knight || Billionare")
                .font(.system(size: 15))
                .padding([.leading, .trailing])
            
            ActionButtonsView(isCurrentPage: false, isFollowed: false)
                .padding([.top, .bottom])
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
