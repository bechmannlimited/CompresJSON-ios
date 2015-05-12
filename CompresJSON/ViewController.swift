//
//  ViewController.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

let key = CompresJSON.sharedInstance().settings.encryptionKey

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        CompresJsonRequest.create("http://alex.bechmann.co.uk/compresjson/api/", parameters: ["test" : "valueee"], method: .POST).onDownloadSuccess { (json, request) -> () in
            
            println(json)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

