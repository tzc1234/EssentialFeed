//
//  LoadMoreCell.swift
//  EssentialFeediOS
//
//  Created by Tsz-Lung on 05/06/2023.
//

import UIKit

public final class LoadMoreCell: UITableViewCell {
    private lazy var spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .medium)
        contentView.addSubview(spinner)
        
        spinner.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            spinner.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            spinner.heightAnchor.constraint(lessThanOrEqualToConstant: 40)
        ])
        
        return spinner
    }()
    
    public var isLoading: Bool {
        get { spinner.isAnimating }
        set { newValue ? spinner.startAnimating() : spinner.stopAnimating() }
    }
}
