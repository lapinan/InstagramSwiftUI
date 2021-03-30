//
//  Post.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 30.03.2021.
//

import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerId: String
    let caption: String
    let likes: Int
    let imageURL: String
    let timestamp: Timestamp
    let ownerImageURL: String
    let ownerUsername: String
}
