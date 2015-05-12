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
        
        
        var item = CardDesignItem()
        item.ColorID = 5
        item.FontID = 15
        item.ItemText = "hello test3 ???"
        item.CardDesignID = 1420
        item.compresJSONWebApiInsert()?.onDownloadSuccess({ (json, request) -> () in
            
            var item2:CardDesignItem = CardDesignItem.createObjectFromJson(json)

            println(item2.ItemText)
            println(item2.CardDesignItemID)
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

