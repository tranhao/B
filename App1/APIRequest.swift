//
//  APIRequest.swift
//  TaxiDriver
//
//  Created by nmtien92 on 2/4/17.
//  Copyright © 2017 taxionline. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class APIRequest {
  
    internal static func arrNews(completionhandler: @escaping ([NewsObject]) -> Void) {
        let url = "http://hoangvandan.com/freshfood/get_all_news.php"
        APICommunicator.doGet(url: url) { responseData in
            if let data = responseData {
                let newsObject: [NewsObject] = JSONParser.arrNews(data: data)
                completionhandler(newsObject)
            }
        }
    }
 
}
