//
//  ViewController.swift
//  App1
//
//  Created by Hao on 5/13/17.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        APIRequest.arrNews { (arrNews) in
            for i in 0..<arrNews.count{
                let news: NewsObject = arrNews[i] 
                print(news.content!)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

