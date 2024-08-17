//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Jessie Elliott on 4/28/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
