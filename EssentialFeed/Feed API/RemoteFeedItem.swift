//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/25/24.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
