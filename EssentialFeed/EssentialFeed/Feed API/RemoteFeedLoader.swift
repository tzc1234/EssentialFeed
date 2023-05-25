//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 27/11/2022.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
