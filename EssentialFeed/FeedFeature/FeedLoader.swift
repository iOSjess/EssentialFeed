//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/3/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
