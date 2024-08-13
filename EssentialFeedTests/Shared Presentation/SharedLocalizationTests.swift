//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Jessie Elliott on 8/12/24.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {
   
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
    // MARK: - Helpers
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
}
