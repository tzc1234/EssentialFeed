//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 10/04/2023.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}