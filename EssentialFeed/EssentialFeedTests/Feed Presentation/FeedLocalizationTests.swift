//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Tsz Lung on 14/03/2023.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizationStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValueExist(in: bundle, table)
    }
    
}
