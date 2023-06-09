//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 25/03/2023.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
