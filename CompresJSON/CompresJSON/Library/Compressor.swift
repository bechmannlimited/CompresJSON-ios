//
//  Compressor.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 11/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class Compressor: NSObject {
   
    class func compress(str:String) -> String {
        
        var data: NSData = str.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        
        var error: NSError?
        var compressedData:NSData = data.gzippedData()!
        
        return compressedData.base64NSString()
    }
    
    class func decompress(str: String) -> String {
        
        var data:NSData = NSData(base64EncodedString: str)!
        
        var error: NSError?
        var decompressedData: NSData = data.gunzippedData()!
        
        return decompressedData.toString()
    }
    
}
