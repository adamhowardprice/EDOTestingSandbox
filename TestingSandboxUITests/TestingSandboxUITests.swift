//
//  TestingSandboxUITests.swift
//  TestingSandboxUITests
//
//  Created by Adam Price on 2/19/20.
//  Copyright © 2020 Butterfly Network. All rights reserved.
//

import XCTest
import TestingSandboxLibrary

class TestingSandboxUITests: XCTestCase {

    @discardableResult
    func launchAppWithPort(port: Int, value: Int) -> XCUIApplication {
        let application = XCUIApplication()
        application.launchArguments = [
            "-servicePort",
            String(format: "%d", port),
            String("-initValue"),
            String(format: "%d", value)]
        application.launch()
        return application
    }

    func testRemoteInvocation() {
        launchAppWithPort(port: 1234, value: 10)
        let remoteObject = EDOClientService.rootObject(withPort: 1234)
        let testPerson = unsafeBitCast(remoteObject, to: StubbedPersonExtension.self)
        let swiftClass: RemotePersonProtocol = testPerson.remoteProtocol()
        XCTAssertEqual(swiftClass.sayMyName(), "My name is Adam Price, my value is 10")
    }
}
