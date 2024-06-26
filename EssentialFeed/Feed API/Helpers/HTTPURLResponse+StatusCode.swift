//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeedTests
//
//  Created by Jessie Elliott on 5/9/24.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
