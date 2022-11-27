//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 27/11/2022.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
