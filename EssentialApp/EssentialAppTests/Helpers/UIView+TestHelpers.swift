//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Jessie Elliott on 7/27/24.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
