//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 24.03.2021.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let email: String
    let fullname: String
    let username: String
    let profileImageURL: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    
    var isCurrentPage: Bool {
        return AuthViewModel.shared.userSession?.uid == id 
    }
}
