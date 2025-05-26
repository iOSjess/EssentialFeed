//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/22/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage]) throws

    @available(*, deprecated)
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}

public extension FeedCache {
    func save(_ feed: [FeedImage]) throws {
        let group = DispatchGroup()
        group.enter()
        var result: Result!
        save(feed) {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void) {}
}
