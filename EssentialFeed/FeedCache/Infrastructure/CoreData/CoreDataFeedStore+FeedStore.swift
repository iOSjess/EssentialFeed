//
//  CoreDataFeedStore+FeedStore.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/12/24.
//

import Foundation

extension CoreDataFeedStore: FeedStore {
    
    public func retrieve() throws -> CachedFeed? {
        try ManagedCache.find(in: context).map {
            CachedFeed(feed: $0.localFeed, timestamp: $0.timestamp)
        }
    }
    
    public func insert(_ feed: [EssentialFeed.LocalFeedImage], timestamp: Date) throws {
        let managedCache = try ManagedCache.newUniqueInstance(in: context)
        managedCache.timestamp = timestamp
        managedCache.feed = ManagedFeedImage.images(from: feed, in: context)
        try context.save()
    }
    
    public func deleteCachedFeed() throws {
        try ManagedCache.deleteCache(in: context)
    }
    
}
