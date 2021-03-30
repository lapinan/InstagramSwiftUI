//
//  FeedViewModel.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 30.03.2021.
//

import SwiftUI


class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        fetchPosts()
    }
        
    func fetchPosts() {
        COLLECTION_POSTS.getDocuments { snapshots, _ in
            guard let documents = snapshots?.documents else { return }
            self.posts = documents.compactMap { try? $0.data(as: Post.self ) }
        }
    }
}

