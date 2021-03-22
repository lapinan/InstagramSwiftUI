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
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("login")
    }
    
    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { results, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = results?.user else { return }
            self.userSession = user
        }
    }
    
}
