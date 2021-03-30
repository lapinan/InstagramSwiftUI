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
        COLLECTION_USERS.getDocuments { snapshots, _ in
            guard let documents = snapshots?.documents else { return }
            self.users = documents.compactMap { try? $0.data(as: User.self) }
            print(self.users )
        }
    }
    
    func filteredUsers(_ query: String) -> [User] {
        let querylowercased = query.lowercased()
        return self.users.filter { $0.fullname.lowercased().contains(querylowercased) || $0.username.lowercased().contains(querylowercased) }
    }
}
