//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Jessie Elliott on 6/1/24.
//

import XCTest

final class EssentialAppUIAcceptanceTests: XCTestCase {

//    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
//        let app = XCUIApplication()
//        
//        app.launch()
//        
//        XCTAssertEqual(app.cells.count, 22) <- passes
//        XCTAssertEqual(app.cells.firstMatch.images.count, 1) <- does not pass
//    }
    
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(feedCells.count, 22) // <- does not pass
        
        let firstImage = app.images.matching(identifier: "feed-image-view").firstMatch
        XCTAssertTrue(firstImage.exists) // <- does not pass
    }
}
