//
//  User.swift
//  objectmapperTest
//
//  Created by Alex Bechmann on 26/04/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class User: JSONObject {
    
    var id = 0
    var Username = ""
    var Email = ""
    var Password = ""
    
    
    override func registerClassesForJsonMapping() {
        
    }
    
    
    // MARK: - Web api methods
    
    override class func webApiUrls() -> WebApiManager {
        
        return WebApiManager().setupUrlsForREST("Users")
    }
    
    override func webApiRestObjectID() -> Int? {
        
        return id
    }
}
