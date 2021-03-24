//
//  UserCell.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct UserCell: View {
    
    let username: String
    let fullname: String
    
    var body: some View {
        HStack {
            Image("joker")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(fullname)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        .padding(.leading)
    }
}
