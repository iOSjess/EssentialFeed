//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/3/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
