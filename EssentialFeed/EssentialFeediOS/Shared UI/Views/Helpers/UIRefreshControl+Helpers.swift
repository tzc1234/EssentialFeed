//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Tsz-Lung on 28/05/2023.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
