//
//  MainTabView.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem { Image(systemName: "house") }
                
                SearchView()
                    .tabItem { Image(systemName: "magnifyingglass")}
                
                UploadView()
                    .tabItem { Image(systemName: "plus.square")}
                
                NotificationView()
                    .tabItem { Image(systemName: "heart") }
                
                ProfileView()
                    .tabItem { Image(systemName: "person") }
            }.accentColor(.black)
            .navigationTitle(Text("Home"))
            .navigationBarItems(leading: Button(action: {
                AuthViewModel.shared.logout()
            }, label: {
                Text("Logout").foregroundColor(Color.black)
            }))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
