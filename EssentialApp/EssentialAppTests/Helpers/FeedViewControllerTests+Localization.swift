//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Tsz Lung on 14/03/2023.
//

import Foundation
import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
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
}
