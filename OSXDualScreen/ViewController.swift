//
//  ViewController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var displayWindowController: displayWindowController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let storyboardSceneID = NSStoryboard.SceneIdentifier(rawValue: "displayWindowController")
        let wc = storyboard.instantiateController(withIdentifier: storyboardSceneID) as! displayWindowController
        return wc
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(monitorDidChange),
            name:  NSApplication.didChangeScreenParametersNotification,
            object: nil)
    }
    
    override func viewWillAppear() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storyboardName = NSStoryboard.Name(rawValue: "Main")
        let storyboard = NSStoryboard(name: storyboardName, bundle: nil)
        let storyboardSceneID = NSStoryboard.SceneIdentifier(rawValue: "displayWindowController")
        _ = storyboard.instantiateController(withIdentifier: storyboardSceneID) as! NSWindowController
    }

    @objc func monitorDidChange(notification: NSNotification) {
        if NSScreen.screens.count == 1 {
            print("there is one monitor")
        }
        if NSScreen.screens.count > 1 {
            print("there are two monitors")
        }
    }
}

