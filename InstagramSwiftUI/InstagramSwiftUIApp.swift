//
//  InstagramSwiftUIApp.swift
//  InstagramSwiftUI
//
//  Created by Андрей Лапин on 19.03.2021.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
