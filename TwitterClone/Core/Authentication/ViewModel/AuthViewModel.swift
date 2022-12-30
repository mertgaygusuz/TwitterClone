//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 25.12.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("Login with email: \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        print("Register with email: \(email)")
    }
}
