//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 10/04/2023.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
