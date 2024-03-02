//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Jessie Elliott on 3/2/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
