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
        
        var message = "hello really";
        
        //println(message.compress())
        //println(message.encrypt(CompresJSON.sharedInstance().settings.encryptionKey))
        
        var encrypted = CompresJSON.encryptAndCompressAsNecessary(message)
        println(encrypted)
        
        var decrypted = CompresJSON.decryptAndDecompressAsNecessary("U2FsdGVkX1/fzO1EaH5yyxiIHiZduWW6OGQ6BD1e6scT385SPoz8r4Gqc+CGyI4v")
        println(decrypted)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

