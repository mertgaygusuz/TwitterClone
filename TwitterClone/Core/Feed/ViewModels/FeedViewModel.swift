//
//  FeedViewModel.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 8.01.2023.
//

import Foundation

class FeedViewModel: ObservableObject {
    
    
    let service = TweetService()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        service.fetchTweet()
    }
}
