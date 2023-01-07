//
//  ExploreViewModel.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 7.01.2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    let service = UserService()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
            
            print("users \(users)")
        }
    }
    
}
