//
//  FeedImageDataLoaderSpy.swift
//  EssentialAppTests
//
//  Created by Jessie Elliott on 5/22/24.
//

import Foundation
import EssentialFeed

//class FeedImageDataLoaderSpy: FeedImageDataLoader {
//    private var messages = [(url: URL)]()
//    
//    var loadedURLs: [URL] {
//        return messages.map { $0.url }
//    }
//    
//    private(set) var cancelledURLs = [URL]()
//    
//    func complete(with error: Error, at index: Int = 0) {
//        messages[index].completion(.failure(error))
//    }
//    
//    func complete(with data: Data, at index: Int = 0) {
//        messages[index].completion(.success(data))
//    }
//    
//    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
//        messages.append((url, completion))
//        return Task { [weak self] in
//            self?.cancelledURLs.append(url)
//        }
//    }
//}
