//
//  ViewController.swift
//  AccessControl
//

import UIKit
import AccessControlModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func testPublicAccess() {
        PublicClass().testPublicAccess()
    }
}

