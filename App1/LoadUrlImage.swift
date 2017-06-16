//
//  LoadUrlImage.swift
//  App1
//
//  Created by Hao on 5/15/17.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit
class LoadUrlImage {
   internal static func getDataFromUrl(url: URL, completion: @escaping (_ data: Data?, _  response: URLResponse?, _ error: Error?) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            completion(data, response, error)
            }.resume()
    }
 

}
