//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Tsz Lung on 08/03/2023.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    public var hasLocation: Bool {
        location != nil
    }
}
