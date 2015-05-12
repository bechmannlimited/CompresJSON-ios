//
//  Compressor.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 09/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

private let kAnalyzer = JavaScriptAnalyzer.sharedInstance()
private let kScriptPath = "encryptor_compressor"

class Compressor: NSObject {
   
    class func compress(str: String) -> String {
        
        kAnalyzer.loadScript(kScriptPath)
        return kAnalyzer.executeJavaScriptFunction("Compress", args: [str]).toString()
        
//        var data:NSData = NSString(UTF8String: str)!.dataUsingEncoding(NSUTF8StringEncoding)!
//        
//        var error: NSError?
//        var compressedData = data.gzippedData()!
//        
//        return compressedData.base64NSString()
    }
    
    class func decompress(str: String) -> String {
        
        kAnalyzer.loadScript(kScriptPath)
        return kAnalyzer.executeJavaScriptFunction("Decompress", args: [str]).toString()
        
//        var data = str.NSDataFromBase64String()
//        
//        var error: NSError?
//        var decompressedData = data.gunzippedData()!
//        
//        return String(NSString(data: decompressedData, encoding: NSUTF8StringEncoding)!)
    }
    
}
