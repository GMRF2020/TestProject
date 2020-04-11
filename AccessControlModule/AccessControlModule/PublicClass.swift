//
//  PublicClass.swift
//  AccessControlModule
//

import UIKit

//Can be accessed from other frameworks and app.Cannot not override the methods or subclass

public class PublicClass: NSObject {
    public func testPublicAccess() {
        print("PublicClass - testPublicAccess")
    }
}

