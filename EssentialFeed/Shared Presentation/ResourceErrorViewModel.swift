//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Jessie Elliott on 4/28/24.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
