//
//  SearchViewModel.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 24.03.2021.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        print("DEBUG: getFetch users")
        COLLECTION_USERS.getDocuments { snapshots, _ in
            guard let documents = snapshots?.documents else { return }
            self.users = documents.compactMap { try? $0.data(as: User.self) }
            print(self.users)
        }
    }
}
