//
//  ViewController.swift
//  OSXDualScreen
//
//  Created by Len Mahaffey on 3/28/18.
//  Copyright © 2018 TLA Designs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let storyboardName = NSStoryboard.Name(rawValue: "Main")
        let storyboard = NSStoryboard(name: storyboardName, bundle: nil)
        let storyboardSceneID = NSStoryboard.SceneIdentifier(rawValue: "displayWindowController")
        let displayWindowController = storyboard.instantiateController(withIdentifier: storyboardSceneID) as! NSWindowController
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

