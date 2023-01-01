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
    @Published var didAuthenticateUser = false
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("User session is \(self.userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Error occurred while sign in \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            print("did log user in")
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Error occurred while register \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            print("registered user succesfully")
            print("user is \(self.userSession)")
            
            let data = ["email": email, "username": username.lowercased(), "fullname": fullname, "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
    }
    
    func signOut() {
        //sets user session to nil so we show login view
        userSession = nil
        
        //signs user out on server
        try? Auth.auth().signOut()
    }
}
