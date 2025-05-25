//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/22/24.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
