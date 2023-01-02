//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Tsz-Lung on 02/01/2023.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "https://any-url.com")!
}
