//
//  OtherAccessClass.swift
//  AccessControlModule
//

import UIKit

//Class can be access only within framework
class OtherAccessClass: NSObject {
    func testInternalAccess() {
           print(" InternalClass - \(String(describing: self))")
        testPrivateAccess()
        testFilePrivateAccess()
    }
    
    //Can be access within the scope enclosed
    private func testPrivateAccess() {
        print(" testPrivateAccess - \(String(describing: self))")
        testInternalAccess()
        testFilePrivateAccess()
    }
}

//Can be accessed within the file enclosed
fileprivate func testFilePrivateAccess() {
      print(" testFilePrivateAccess")
}
