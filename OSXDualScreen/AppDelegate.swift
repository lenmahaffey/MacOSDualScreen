//
//  AppDelegate.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ notification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationDidChangeScreenParameters(_ notification: Notification) {
        let screens = NSScreen.screens
        if screens.count > 1 {
            print("Screen Connected")

        }
        if screens.count == 1 {
            print("Screen Disconected")
        }
    }
}

