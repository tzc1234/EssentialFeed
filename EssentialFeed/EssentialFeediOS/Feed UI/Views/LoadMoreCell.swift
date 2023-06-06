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
            spinner.heightAnchor.constraint(greaterThanOrEqualToConstant: 40)
        ])
        
        return spinner
    }()
    
    private lazy var messageLabel: UILabel = {
        let l = UILabel()
        l.textColor = .tertiaryLabel
        l.font = .preferredFont(forTextStyle: .footnote)
        l.numberOfLines = 0
        l.textAlignment = .center
        l.adjustsFontForContentSizeCategory = true
        contentView.addSubview(l)
        
        l.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            l.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            l.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            l.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            l.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
        
        return l
    }()
    
    public var isLoading: Bool {
        get { spinner.isAnimating }
        set { newValue ? spinner.startAnimating() : spinner.stopAnimating() }
    }
    
    public var message: String? {
        get { messageLabel.text }
        set { messageLabel.text = newValue }
    }
}
