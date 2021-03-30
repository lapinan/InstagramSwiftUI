//
//  MainTabView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct MainTabView: View {
    let user: User
    @Binding var selectedIndex: Int
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                FeedView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "house")
                    }.tag(0)
                
                SearchView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }.tag(1)
                
                UploadView(tabIndex: $selectedIndex)
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "plus.square")
                    }.tag(2)
                
                NotificationView()
                    .onTapGesture {
                        selectedIndex = 3
                    }
                    .tabItem {
                        Image(systemName: "heart")
                    }.tag(3)
                
                ProfileView(user: user)
                    .onTapGesture {
                        selectedIndex = 4
                    }
                    .tabItem {
                        Image(systemName: "person")
                    }.tag(4)
            }.accentColor(.black)
            .navigationTitle(Text(tabTitle ))
            .navigationBarItems(leading: Button(action: {
                AuthViewModel.shared.signout()
            }, label: {
                Text("Logout").foregroundColor(Color.black)
            }))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0:
            return "Feed"
        case 1:
            return "Explore"
        case 2:
            return "New post"
        case 3:
            return "Notifications"
        case 4:
            return "Profile"
        default:
            return ""
        }
    }
}
