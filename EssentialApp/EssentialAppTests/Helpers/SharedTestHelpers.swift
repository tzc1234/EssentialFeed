//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Tsz-Lung on 10/04/2023.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func anyURL() -> URL {
    URL(string: "http://a-url.com")!
}

func uniqueFeed() -> [FeedImage] {
    [FeedImage(id: UUID(), description: "any", location: "any", url: URL(string: "http://any-url.com")!)]
}

private class DummayView: ResourceView {
    func display(_ viewModel: Any) {}
}

var loadError: String {
    LoadResourcePresenter<Any, DummayView>.loadError
}

var feedTitle: String {
    FeedPresenter.title
}

var commentsTitle: String {
    ImageCommentsPresenter.title
}
