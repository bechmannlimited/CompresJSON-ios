//
//  ViewController.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //CompresJsonRequest.create("http://www.google.com", parameters: ["UserID": 18, "Name": "Alex" ] , method: .POST)
        
        var a = "hello".encrypt("hi")
        println(a)
        
        var b = a.decrypt("hi")
        println(b)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

