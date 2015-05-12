//
//  CompresJSONObject.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 12/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class CompresJSONObject: JSONObject {
   
    // MARK: - Web Api Methods
    
    func compresJSONWebApiInsert() -> CompresJsonRequest?{
        
        return compresJSONWebApiInsert(nil)
    }
    
    func compresJSONWebApiInsert(keysToInclude: Array<String>?) -> CompresJsonRequest?{
        
        if let url = self.dynamicType.webApiUrls().insertUrl() {
            
            return CompresJsonRequest.create(url, parameters: self.convertToDictionary(nil, includeNestedProperties: false), method: .POST) as CompresJsonRequest
        }
        else{
            
            println("web api url not set")
            
        }
        
        return nil
    }
    
    func compresJSONWebApiUpdate() -> JsonRequest?{
        
        return compresJSONWebApiUpdate(nil)
    }
    
    func compresJSONWebApiUpdate(keysToInclude: Array<String>?) -> CompresJsonRequest?{
        
        if let url = self.dynamicType.webApiUrls().updateUrl(webApiManagerDelegate?.webApiRestObjectID()) {
            
            return CompresJsonRequest.create(url, parameters: self.convertToDictionary(keysToInclude, includeNestedProperties: false), method: .PUT) as CompresJsonRequest
        }
        else{
            
            println("web api url not set")
        }
        
        return nil
    }
    
    func compresJSONWebApiDelete() -> CompresJsonRequest?{
        
        if let url = self.dynamicType.webApiUrls().deleteUrl(webApiManagerDelegate?.webApiRestObjectID()) {
            
            return CompresJsonRequest.create(url, parameters: nil, method: .DELETE) as CompresJsonRequest
        }
        else{
            
            println("web api url not set")
        }
        
        return nil
    }
    
}
