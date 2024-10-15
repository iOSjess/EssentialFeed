//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 10/14/24.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
