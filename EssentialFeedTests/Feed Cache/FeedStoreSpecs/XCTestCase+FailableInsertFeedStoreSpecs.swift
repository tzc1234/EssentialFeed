//
//  XCTestCase+FailableInsertFeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Tsz Lung on 16/01/2023.
//

import XCTest
import EssentialFeed

extension FailableInsertFeedStoreSpecs where Self: XCTestCase {
    func assertThatInsertDeliversErrorOnInsertionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let insertionError = insert((uniqueImageFeed().locals, Date()), to: sut)
        
        XCTAssertNotNil(insertionError, "Expected cache insertion to fail with an error", file: file, line: line)
    }
    
    func assertThatInsertHasNoSideEffectsOnInsertionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        insert((uniqueImageFeed().locals, Date()), to: sut)
        
        expect(sut, toRetrieve: .success(.none), file: file, line: line)
    }
}
