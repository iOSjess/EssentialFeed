//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Jessie Elliott on 5/18/24.
//

import Foundation


func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func anyURL() -> URL {
    return URL(string: "http://a-url.com")!
}
