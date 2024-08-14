//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 5/1/24.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
