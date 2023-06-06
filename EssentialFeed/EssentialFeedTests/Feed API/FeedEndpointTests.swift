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
        
        XCTAssertEqual(received.scheme, "http", "scheme")
        XCTAssertEqual(received.host, "base-url.com", "host")
        XCTAssertEqual(received.path, "/v1/feed", "path")
        XCTAssertEqual(received.query(), "limit=10", "query")
    }

}
