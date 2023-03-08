//
//  FeedImageCellController.swift
//  EssentialFeediOS
//
//  Created by Tsz Lung on 08/03/2023.
//

import UIKit
import EssentialFeed

final class FeedImageCellController {
    private var task: FeedImageDataLoaderTask?
    private lazy var cell = FeedImageCell()
    private let model: FeedImage
    private let imageLoader: FeedImageDataLoader
    
    init(model: FeedImage, imageLoader: FeedImageDataLoader) {
        self.model = model
        self.imageLoader = imageLoader
    }
    
    func view() -> UITableViewCell {
        cell.locationContainer.isHidden = (model.location == nil)
        cell.locationLabel.text = model.location
        cell.descriptionLabel.text = model.description
        cell.feedImageView.image = nil
        cell.feedImageRetryButton.isHidden = true
        cell.feedImageContainer.startShimmering()
        
        let loadImage = { [weak self] in
            guard let self = self else { return }
            self.startLoad()
        }
        
        cell.onRetry = loadImage
        loadImage()
        
        return cell
    }
    
    func startLoad() {
        task = imageLoader.loadImageData(from: model.url) { [weak cell] result in
            let data = try? result.get()
            let image = data.map(UIImage.init) ?? nil
            cell?.feedImageView.image = image
            cell?.feedImageRetryButton.isHidden = (image != nil)
            cell?.feedImageContainer.stopShimmering()
        }
    }
    
    func preload() {
        task = imageLoader.loadImageData(from: model.url) { _ in }
    }
    
    func cancelLoad() {
        task?.cancel()
    }
}
