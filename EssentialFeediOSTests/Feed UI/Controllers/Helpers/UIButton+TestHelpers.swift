//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Jessie Elliott on 4/13/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
