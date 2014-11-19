//
//  ViewController.swift
//  hello-world-2
//
//  Created by Will Schenk on 11/19/14.
//  Copyright (c) 2014 Will Schenk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var helloLabel : UILabel!

    @IBAction func buttonAction( sender : AnyObject) {
        println( "Pushed the button!" )
        helloLabel.text = "Hello Button!";
    }

}

