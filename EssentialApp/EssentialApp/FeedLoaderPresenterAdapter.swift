//
//  FeedLoaderPresenterAdapter.swift
//  EssentialFeediOS
//
//  Created by Jessie Elliott on 4/27/24.
//

import Combine
import EssentialFeed
import EssentialFeediOS

final class FeedLoaderPresenterAdapter: FeedViewControllerDelegate {
    private let feedLoader: () -> AnyPublisher<[FeedImage], Error>
    private var cancellable: Cancellable?
    var presenter: FeedPresenter?
    
    init(feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>) {
        self.feedLoader = feedLoader
    }
    
    func didRequestFeedRefresh() {
        presenter?.didStartLoadingFeed()
        
        cancellable = feedLoader()
            .dispatchOnMainQueue()
            .sink(
                receiveCompletion: { [weak self] completion in
                    switch completion {
                    case .finished: break
                        
                    case let .failure(error):
                        self?.presenter?.didFinishLoadingFeed(with: error)
                    }
                }, receiveValue: { [weak self] feed in
                    self?.presenter?.didFinishLoadingFeed(with: feed)
                })
    }
}
