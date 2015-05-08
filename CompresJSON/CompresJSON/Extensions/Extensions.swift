//
//  Extensions.swift
//  EncryptionTests3
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import Foundation

extension NSData {
    
    func base64NSString() -> String {
        
        return String(self.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.allZeros))
    }
}

extension String {
    
    func NSDataFromBase64String() -> NSData {
        
        return NSData(base64EncodedString: self, options: NSDataBase64DecodingOptions.allZeros)!
    }
}