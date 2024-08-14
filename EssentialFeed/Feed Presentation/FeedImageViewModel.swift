//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/1/24.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
