//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Tsz Lung on 08/03/2023.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        location != nil
    }
}
