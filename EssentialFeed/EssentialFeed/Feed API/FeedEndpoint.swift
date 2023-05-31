//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 31/05/2023.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appending(path: "/v1/feed")
        }
    }
}
