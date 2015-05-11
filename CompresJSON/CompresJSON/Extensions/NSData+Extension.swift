//
//  NSData+Extension.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 10/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

extension NSData {
 
    func toString() -> String{
        
        return String(NSString(data: self, encoding: NSUTF8StringEncoding)!)
    }
    
}
