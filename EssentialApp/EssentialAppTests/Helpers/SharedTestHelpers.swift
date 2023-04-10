//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Tsz-Lung on 10/04/2023.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func anyURL() -> URL {
    URL(string: "http://a-url.com")!
}
