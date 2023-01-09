//
//  TweetRowViewModel.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 9.01.2023.
//

import Foundation

class TweetRowViewModel: ObservableObject {

    let tweet: Tweet
    private let service = TweetService()

    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        service.likeTweet(tweet)
    }
}
