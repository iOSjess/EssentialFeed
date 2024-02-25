//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/3/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
