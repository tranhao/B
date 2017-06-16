//
//  AllNewsController.swift
//  App1
//
//  Created by Hao on 5/15/17.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit

class AllNewsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrNews = [NewsObject]()
    @IBOutlet weak var newTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newTableView.register(UINib(nibName: "AllnewsCell", bundle: nil), forCellReuseIdentifier: "newsCell")

        APIRequest.arrNews { (arrNews) in
            self.arrNews = arrNews
            print(self.arrNews.count)
            self.newTableView.reloadData()

//            for i in 0..<arrNews.count{
//                let news: NewsObject = arrNews[i]
//                print(news.content!)
//            }
            
        }

     }
    // MARK: - Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell: AllnewsCell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! AllnewsCell

        cell = Bundle.main.loadNibNamed("AllnewsCell", owner: self, options: nil)?[0] as! AllnewsCell
        let news: NewsObject = self.arrNews[indexPath.row]
        cell.lblTitleNews.text = news.title
        cell.lblContentNews.text = news.content
        if let checkedUrl = URL(string: news.image!) {
            LoadUrlImage.getDataFromUrl(url: checkedUrl) { (data, response, error)  in
                guard let data = data, error == nil else { return }
//                print(response?.suggestedFilename ?? url.lastPathComponent)
//                image = UIImage(data: data)
                
                print("Download Finished")
                            DispatchQueue.main.async() { () -> Void in
                                cell.imgNews.image = UIImage(data: data)
                                return
                            }
            }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
