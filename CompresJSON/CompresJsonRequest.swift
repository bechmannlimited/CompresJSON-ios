//
//  CompresJsonRequest.swift
//  CompresJSON
//
//  Created by Alex Bechmann on 09/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class CompresJsonRequest: JsonRequest {
   
    override class func create< T : JsonRequest >(urlString:String, parameters:Dictionary<String, AnyObject>?, method:Method) -> T {
        
        return CompresJsonRequest(urlString: urlString, parameters: parameters, method: method) as! T
    }
    
    internal override func exec() {
        
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        
        if let params = self.parameters {
            
            var err: NSError?
            var json: String = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)!.toString()
            
            println("json: \(json)")
            json = CompresJSON.encryptAndCompressAsNecessary(json)
            
            self.parameters = Dictionary<String, AnyObject>()
            self.parameters!["data"] = json
        }
        
        println(self.parameters!["data"])
        println(CompresJSON.decryptAndDecompressAsNecessary(self.parameters!["data"] as! String))
        
        self.almofireRequest = request(self.method, self.urlString, parameters: self.parameters, encoding: ParameterEncoding.URL)
            .response{ (request, response, data, error) in
                
                if let e = error {
                    
                    var alert = self.alertControllerForError(e, completion: { (retry) -> () in
                        
                        if retry {
                            
                            self.cancel()
                            self.exec()
                        }
                    })
                    
                    self.failDownload(e, alert: alert)
                }
                    
                else{
                    
                    let json = JSON(data: data! as! NSData)
                    self.succeedDownload(json)
                }
                
                self.finishDownload()
                UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
    }
    
}
