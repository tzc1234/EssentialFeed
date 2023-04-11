//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Tsz Lung on 08/03/2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
