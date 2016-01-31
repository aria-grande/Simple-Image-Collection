//
//  Simple_Image_CollectionTests.swift
//  Simple-Image-CollectionTests
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import XCTest
@testable import Simple_Image_Collection

class Simple_Image_CollectionTests: XCTestCase {
    
    var data:NSMutableArray
    
    override func setUp() {
        super.setUp()
        data = ImageCrawler().crawl().get()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func crawlTest() {
        assert(data.count = 420)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
