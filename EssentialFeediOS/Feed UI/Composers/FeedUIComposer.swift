//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Tsz Lung on 08/03/2023.
//

import Foundation
import EssentialFeed

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(loader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: loader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = adaptFeedToControllers(forwardingTo: feedController, loader: imageLoader)
        return feedController
    }
    
    private static func adaptFeedToControllers(forwardingTo contorller: FeedViewController, loader: FeedImageDataLoader) -> ([FeedImage]) -> Void {
        return { [weak contorller] feed in
            contorller?.tableModel = feed.map { model in
                FeedImageCellController(model: model, imageLoader: loader)
            }
        }
    }
}
