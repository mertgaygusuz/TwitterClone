//
//  FeedViewModel.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 8.01.2023.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    let service = TweetService()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        service.fetchTweet { tweets in
            self.tweets = tweets
        }
    }
}
