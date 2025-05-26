//
//  NullStore.swift
//  EssentialApp
//
//  Created by Jessie Elliott on 5/20/25.
//

import Foundation
import EssentialFeed

class NullStore: FeedStore {
    func deleteCachedFeed() throws {}
    
    func insert(_ feed: [EssentialFeed.LocalFeedImage], timestamp: Date) throws {}
    
    func retrieve() throws -> CachedFeed? { .none }
}

extension NullStore: FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws {}
    
    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
