//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/3/24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
