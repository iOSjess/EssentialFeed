//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Jessie Elliott on 4/13/24.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
