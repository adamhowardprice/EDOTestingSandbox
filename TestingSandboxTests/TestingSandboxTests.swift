//
//  TestingSandboxTests.swift
//  TestingSandboxTests
//
//  Created by Adam Price on 2/19/20.
//  Copyright © 2020 Butterfly Network. All rights reserved.
//

import XCTest
@testable import TestingSandbox

class TestingSandboxTests: XCTestCase {
    
    @discardableResult
    func launchAppWithPort(port: Int, value: Int) -> XCUIApplication {
        let application = XCUIApplication()
        application.launchArguments = [
            "-servicePort", String(format: "%d", port), String("-dummyInitValue"),
            String(format: "%d", value)]
        application.launch()
        return application
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
