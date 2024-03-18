//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 2/25/24.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
