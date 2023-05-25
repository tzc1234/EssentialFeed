//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Tsz-Lung on 10/04/2023.
//

import EssentialFeed

class FeedLoaderStub {
    private let result : Swift.Result<[FeedImage], Error>
    
    init(result: Swift.Result<[FeedImage], Error>) {
        self.result = result
    }
    
    func load(completion: @escaping (Swift.Result<[FeedImage], Error>) -> Void) {
        completion(result)
    }
}
