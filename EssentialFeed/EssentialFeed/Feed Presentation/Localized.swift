//
//  Localized.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 14/04/2023.
//

import Foundation

final class Localized {
    static var bundle: Bundle {
        Bundle(for: Localized.self)
    }
}

extension Localized {
    enum Feed {
        static var table: String { "Feed" }

        static var title: String {
            NSLocalizedString(
                "FEED_VIEW_TITLE",
                tableName: table,
                bundle: bundle,
                comment: "Title for the feed view")
        }

        static var loadError: String {
            NSLocalizedString(
                "GENERIC_CONNECTION_ERROR",
                tableName: table,
                bundle: bundle,
                comment: "Error message displayed when we can't load the image feed from the server")
        }
    }
}
