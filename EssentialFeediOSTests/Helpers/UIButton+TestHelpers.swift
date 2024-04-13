//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Jessie Elliott on 4/13/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
