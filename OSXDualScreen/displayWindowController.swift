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
        
        var displays = [CGDirectDisplayID](repeating: 0, count: Int(2))
        var displayCount: UInt32 = 2
        _ = CGGetOnlineDisplayList(2, &displays, &displayCount)
        print(type(of:displays))

    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        let screens = NSScreen.screens
        if screens.count == 1 {
            //self.window?.toggleFullScreen(nil)
            self.showWindow(nil)
        }
    }

}
