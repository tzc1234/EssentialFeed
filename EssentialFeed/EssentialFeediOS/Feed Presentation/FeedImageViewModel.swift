//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Tsz Lung on 08/03/2023.
//

public struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        location != nil
    }
}
