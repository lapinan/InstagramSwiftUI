//
//  AuthViewModel.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 22.03.2021.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("login")
    }
    
    func register(withEmail email: String, password: String, image: UIImage?, username: String, fullname: String) {
        
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image) { imageURL in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else { return }
                print("good register user")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageURL": imageURL,
                            "uid": user.uid
                            ]
                
                Firestore.firestore().collection("users").document(user.uid).setData( data) { _ in
                    self.userSession = user
                }
            }
        }
    }
    
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
}
