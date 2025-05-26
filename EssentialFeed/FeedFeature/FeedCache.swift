//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/22/24.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
