//
//  FeedEndpointTests.swift
//  EssentialFeedTests
//
//  Created by Tsz-Lung on 31/05/2023.
//

import XCTest
import EssentialFeed

final class FeedEndpointTests: XCTestCase {

    func test_imageComments_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!
        
        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!
        
        XCTAssertEqual(received, expected)
    }

}
