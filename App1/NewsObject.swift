//
//  NewsObject.swift
//  App1
//
//  Created by Hao on 5/14/17.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit

class NewsObject {
    let news_id: String?
    let content : String?
    let image : String?
    let title : String?
    
    init(news_id : String, content: String, image: String, title: String){
        self.news_id = news_id
        self.content = content
        self.image = image
        self.title = title
    }
    
}
