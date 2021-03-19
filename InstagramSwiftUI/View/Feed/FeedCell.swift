//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct FeedCell: View {
    private let maxHeight = UIScreen.main.bounds.height / 2
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // user info
            HStack {
                Image("joker")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.leading)
            
            // post image
            Image("batman")
                .resizable()
                .scaledToFit()
            
            // action buttons
            HStack(spacing: 30) {
                Button(action: { }) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .font(.system(size: 20))
                }
                Button(action: { }) {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .font(.system(size: 20))
                }
                Button(action: { }) {
                    Image(systemName:  "paperplane")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .font(.system(size: 20))
                }
            }
            .foregroundColor(Color.black)
            .padding([.leading, .top])
            
            // cpation
            HStack {
                Text("batman").font(.system(size: 14, weight: .semibold)) + Text(" All men have limits. The learn whate they are and learn not to exced them. I ignore mine.").font(.system(size: 15))
            }
            .foregroundColor(Color.black)
            .padding([.leading, .trailing])
            .padding(.top, 2)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading)
                .padding(.top, 4)
                
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
