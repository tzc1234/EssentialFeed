//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 27/11/2022.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
