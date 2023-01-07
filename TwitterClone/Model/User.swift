//
//  User.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 7.01.2023.
//

import FirebaseFirestoreSwift

struct User: Identifiable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
