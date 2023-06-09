//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 10/04/2023.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
