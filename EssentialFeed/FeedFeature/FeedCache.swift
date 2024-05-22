//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/22/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
