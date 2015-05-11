//
//  Encryptor.swift
//  EncryptionTests3
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

let crypto = StringEncryption()

class Encryptor: NSObject {
   
    class func encrypt(str: String) -> String {
        
        Encryptor.printErrorIfEncryptionKeyIsNotSet()
        
        var messageData = str.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        
        var keyData = CompresJSON.sharedInstance().settings.encryptionKey.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        var padding:CCOptions = StringEncryptionBridgeHelper.options()
        
        var encryptedData:NSData = crypto.encrypt(messageData, key: keyData, padding: &padding)
        return encryptedData.base64NSString()
    }
    
    class func decrypt(str: String) -> String {
        
        Encryptor.printErrorIfEncryptionKeyIsNotSet()
        
        var keyData = CompresJSON.sharedInstance().settings.encryptionKey.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        var padding:CCOptions = StringEncryptionBridgeHelper.options()
        
        var decryptedData:NSData = crypto.decrypt(str.NSDataFromBase64String(), key: keyData, padding: &padding)
        var str = NSString(data: decryptedData, encoding: NSUTF8StringEncoding)!
        
        return String(str)
    }
    
    class func printErrorIfEncryptionKeyIsNotSet() {
        
        if CompresJSON.sharedInstance().settings.encryptionKey == "" {
            
            println("Encryption key not set: add to appdelegate: CompresJSON.sharedInstance().settings.encryptionKey = xxxx")
        }
    }
    
}

extension String {
    
    func encrypt() -> String {
        
        return Encryptor.encrypt(self)
    }
    
    func decrypt() -> String {
        
        return Encryptor.decrypt(self)
    }
    
}
