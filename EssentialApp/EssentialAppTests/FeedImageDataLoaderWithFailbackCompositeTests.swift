//
//  FeedImageDataLoaderWithFailbackCompositeTests.swift
//  EssentialAppTests
//
//  Created by Tsz-Lung on 10/04/2023.
//

import XCTest
import EssentialFeed

class FeedImageDataLoaderWithFallabckComposite: FeedImageDataLoader {
    private class Task: FeedImageDataLoaderTask {
        func cancel() {
            
        }
    }
    
    init(primary: FeedImageDataLoader, fallback: FeedImageDataLoader) {
        
    }
    
    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
        Task()
    }
}

final class FeedImageDataLoaderWithFailbackCompositeTests: XCTestCase {

    func test_init_doesNotLoadImageData() {
        let primaryLoader = LoaderSpy()
        let fallbackLoader = LoaderSpy()
        _ = FeedImageDataLoaderWithFallabckComposite(primary: primaryLoader, fallback: fallbackLoader)
        
        XCTAssertTrue(primaryLoader.loadedURLs.isEmpty, "Expected no loaded URLs in the primary loader")
        XCTAssertTrue(fallbackLoader.loadedURLs.isEmpty, "Expected no loaded URLs in the fallback loader")
    }

    // MARK: - Helpers
    
    private class LoaderSpy: FeedImageDataLoader {
        private var messages = [(url: URL, completion: (FeedImageDataLoader.Result) -> Void)]()
        
        var loadedURLs: [URL] {
            messages.map(\.url)
        }
        
        private struct Task: FeedImageDataLoaderTask {
            func cancel() {}
        }
        
        func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
            Task()
        }
    }
    
}
