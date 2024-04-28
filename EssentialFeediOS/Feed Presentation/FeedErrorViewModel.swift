//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Jessie Elliott on 4/28/24.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
