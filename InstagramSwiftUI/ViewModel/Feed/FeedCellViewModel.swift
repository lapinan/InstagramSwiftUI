//
//  FeedCellViewModel.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 01.04.2021.
//

import SwiftUI

class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func unLiked() {
        print("DUBG: unliked")
    }
    
    func like() {
        
            
    }
    
    func checkDidLike() {
        
    }
}
