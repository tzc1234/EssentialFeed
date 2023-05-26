//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Tsz-Lung on 26/05/2023.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {

    func test_localizationStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        assertLocalizedKeyAndValueExist(in: bundle, table)
    }
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }

}
