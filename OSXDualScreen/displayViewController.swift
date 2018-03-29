//
//  displayViewController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

class displayViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true
        let color : CGColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        self.view.layer?.backgroundColor = color
    }
    
}
