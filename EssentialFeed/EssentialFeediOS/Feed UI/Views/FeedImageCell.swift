//
//  FeedImageCell.swift
//  EssentialFeediOS
//
//  Created by Tsz-Lung on 05/03/2023.
//

import UIKit

final public class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) public var locationContainer: UIView!
    @IBOutlet private(set) public var locationLabel: UILabel!
    @IBOutlet private(set) public var feedImageContainer: UIView!
    @IBOutlet private(set) public var feedImageView: UIImageView!
    @IBOutlet private(set) public var feedImageRetryButton: UIButton!
    @IBOutlet private(set) public var descriptionLabel: UILabel!
    
    var onRetry: (() -> Void)?
    var onReuse: ((ObjectIdentifier) -> Void)?
    
    @IBAction private func retryButtonTap() {
        onRetry?()
    }
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        
        onReuse?(ObjectIdentifier(self))
    }
}
