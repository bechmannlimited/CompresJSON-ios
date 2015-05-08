//
//  CompresJSON.swift
//  EncryptionTests3
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

let kCompresJSONSharedInstance = CompresJSON()

class CompresJSON: NSObject {
   
    class func sharedInstance() -> CompresJSON {
        
        return kCompresJSONSharedInstance
    }
    
    var settings: CompresJSONSettings = CompresJSONSettings()
    
}
