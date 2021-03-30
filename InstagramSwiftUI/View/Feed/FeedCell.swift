//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import Kingfisher
import SwiftUI

struct FeedCell: View {
    let post: Post
    private let maxHeight = UIScreen.main.bounds.height / 2
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // user info
            HStack {
                KFImage(URL(string: post.ownerImageURL))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle() )
                
                Text(post.ownerUsername)
                    .font(.system(size: 14, weight: .semibold))
            }.padding(.leading)
            
            // post image
            KFImage(URL(string: post.imageURL))
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
            .padding([.leading])
            
            Text("\(post.likes) likes")
                .font(.system(size: 14, weight: .semibold))
                .padding([.leading])
             
            // cpation
            HStack {
                Text(post.ownerUsername).font(.system(size: 14, weight: .semibold)) + Text(post.caption).font(.system(size: 15))
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


