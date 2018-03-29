//
//  displayWindowController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

class displayWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        let screens = NSScreen.screens
        if screens.count == 1 {
            //self.window?.toggleFullScreen(nil)
            self.showWindow(nil)
        }
    }

}
