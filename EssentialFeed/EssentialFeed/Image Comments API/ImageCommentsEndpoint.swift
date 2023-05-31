//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 31/05/2023.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appending(path: "/v1/image/\(id)/comments")
        }
    }
}
