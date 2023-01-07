//
//  UserService.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 7.01.2023.
//

import Firebase

struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let data = snapshot?.data() else { return }
                
                print("user data is \(data)")
            }
    }
}
