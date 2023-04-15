//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Tsz-Lung on 15/04/2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.main.run(until: Date())
    }
}
