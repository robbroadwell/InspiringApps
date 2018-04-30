//
//  inspireTests.swift
//  inspireTests
//
//  Created by Rob Broadwell on 4/29/18.
//  Copyright © 2018 Rob Broadwell. All rights reserved.
//

import XCTest
@testable import inspire

class inspireTests: XCTestCase {
    
    func testSplit() {
        let split = "split"
        let lines = split.lines
        XCTAssertEqual(split, lines[0])
    }
    
    func testDownload() {
        let url = URL(string: "http://dev.inspiringapps.com/Files/IAChallenge/30E02AAA-B947-4D4B-8FB6-9C57C43872A9/Apache.log")!
        do {
            let log = try String(contentsOf: url, encoding: .utf8)
            let lines = log.lines
            XCTAssertEqual(lines.count, 10000)
        } catch {
            print("test failed")
        }
    }
    
}
