//
//  ActionButtonsView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 20.03.2021.
//

import SwiftUI

struct ActionButtonsView: View {
    var isCurrentPage: Bool
    var isFollowed = true
    
    private let width = UIScreen.main.bounds.width
    
    var body: some View {
        if isCurrentPage {
            HStack {
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Edit profile")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: width - 40, height: 32)
                        .foregroundColor(Color.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Spacer()
            }.padding(.top)
        } else {
            HStack {
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: width / 2 - 20, height: 32)
                        .foregroundColor(isFollowed ? Color.black : Color.white)
                        .background(isFollowed ? Color.white : Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(isFollowed ? Color.gray : Color.blue, lineWidth: 1)
                        )
                }
                Button(action: {
                    
                }) {
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: width / 2 - 20, height: 32)
                        .foregroundColor(Color.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }

                Spacer()
            }
        }
    }
}


