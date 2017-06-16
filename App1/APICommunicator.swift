//
//  APICommunicator.swift
//  TaxiDriver
//
//  Created by nmtien92 on 2/4/17.
//  Copyright © 2017 taxionline. All rights reserved.
//

import UIKit
import Alamofire

class APICommunicator {
    internal static func doGet(url: String, onResponse: @escaping ((Data!) -> Void)) {
        Alamofire.request(url, method: .get).response(completionHandler: { alamofireResponse in
            if let data = alamofireResponse.data {
                onResponse(data)
            } else {
                onResponse(nil)
            }
        })
    }
    
    internal static func doPost(url: String, parameters: Parameters, onResponse: @escaping ((Data!) -> Void)) {
        Alamofire.request(url, method: .post, parameters: parameters).response(completionHandler: { alamofireResponse in
            if let data = alamofireResponse.data {
                onResponse(data)
            } else {
                onResponse(nil)
            }
        })
        
    }
    
    internal static func doPut(url: String, parameters: Parameters, onResponse: @escaping ((Data!) -> Void)) {
        Alamofire.request(url, method: .put, parameters: parameters).response(completionHandler: { alamofireResponse in
            if let data = alamofireResponse.data {
                onResponse(data)
            } else {
                onResponse(nil)
            }
        })
    }
    
    internal static func doDelete(url: String, parameters: Parameters, onResponse: @escaping ((Data!) -> Void)) {
        Alamofire.request(url, method: .delete, parameters: parameters).response(completionHandler: { alamofireResponse in
            if let data = alamofireResponse.data {
                onResponse(data)
            } else {
                onResponse(nil)
            }
        })
    }
}
