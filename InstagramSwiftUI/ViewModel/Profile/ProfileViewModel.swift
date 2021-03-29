//
//  ProfileViewModel.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 25.03.2021.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func follow() {
        guard let uid = user.id else { return }
        UserService.follow(uid: uid) { _ in
            print("DEBUG: Follow")
        }
    }
    
    func unfollow() {
        print("DEBUG: Unfollow")
    }
}
