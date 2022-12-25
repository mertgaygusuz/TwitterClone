//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 17.12.2022.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //ContentView()
                LoginView()
            }
        }
    }
}
