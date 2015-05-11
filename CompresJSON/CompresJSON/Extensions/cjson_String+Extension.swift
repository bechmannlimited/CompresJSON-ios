//
//  String+Extension.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 09/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

extension String {
    
    //compression
    func compress() -> String {
        
        return Compressor.compress(self)
    }
    
    func decompress() -> String {
        
        return Compressor.decompress(self)
    }
    
    //encryption
    func encrypt(key: String) -> String {
        
        return Encryptor.encrypt(self, key: key)
    }
    
    func decrypt(key: String) -> String {
        
        return Encryptor.decrypt(self, key: key)
    }
    
}