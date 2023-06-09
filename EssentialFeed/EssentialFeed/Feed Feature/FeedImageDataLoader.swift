//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Tsz Lung on 08/03/2023.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
