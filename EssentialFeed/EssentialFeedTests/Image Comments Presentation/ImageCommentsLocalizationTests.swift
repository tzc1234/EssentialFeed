//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Tsz-Lung on 26/05/2023.
//

import XCTest
import EssentialFeed

final class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizationStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValueExist(in: bundle, table)
    }
    
}
