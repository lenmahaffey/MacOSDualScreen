//
//  displayWindowController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

class displayWindowController: NSWindowController {

    override func windowWillLoad() {
        super.windowWillLoad()
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.setFrame(NSScreen.screens[1].frame, display: true)
        self.window?.toggleTabBar(self)
        self.window?.backgroundColor = NSColor(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        self.window?.toggleFullScreen(self)
        self.showWindow(self)
    }

    func showWindowOnExtendedDesktop() {
        
    }
}
