//
//  displayWindowController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa
import QuartzCore

class displayWindowController: NSWindowController {

    override func windowWillLoad() {
        super.windowWillLoad()
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        self.showWindow(nil)
    }

}
