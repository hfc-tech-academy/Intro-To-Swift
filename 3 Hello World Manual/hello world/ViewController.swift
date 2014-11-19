//
//  ViewController.swift
//  hello world
//
//  Created by Will Schenk on 11/19/14.
//  Copyright (c) 2014 Will Schenk. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let zoom:CGFloat = 0.5
//        let deviceSize = CGSize(width: 640*zoom, height: 1136*zoom)
        let deviceSize = UIScreen.mainScreen().bounds;
        
        let helloWorldView = UIView(frame: CGRect(x: 0, y: 0, width: deviceSize.width, height: deviceSize.height))
        helloWorldView.backgroundColor = UIColor(white: 0, alpha: 0.01)
        
        
        let font = UIFont(name: "HelveticaNeue-Light", size: 62)
        
        
        let label = UILabel(frame: CGRect.zeroRect)
        label.frame.origin.y = 100
        label.text = "Hello\nWorld!"
        label.numberOfLines = 3
        label.font = font
        label.sizeToFit()
        helloWorldView.addSubview(label)
        
        
        let button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(deviceSize.width/2 - 50, deviceSize.height-130, 100, 50)
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        helloWorldView.addSubview(button)
        
        view.addSubview(helloWorldView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction( sender : AnyObject) {
        println( "Pushed the button!" )
    }

}

