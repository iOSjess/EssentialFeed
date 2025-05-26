//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/12/24.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
