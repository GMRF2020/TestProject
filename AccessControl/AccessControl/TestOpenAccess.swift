//
//  TestOpenAccess.swift
//  AccessControl
//

import UIKit
import AccessControlModule

class TestOpenAccess: OpenClass {
    override func testOpenAccess() {
        //Accessing public class methods from framework
        PublicClass().testPublicAccess()
    }
}
