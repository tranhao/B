//
//  AllnewsCell.swift
//  App1
//
//  Created by Hao on 5/15/17.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit

class AllnewsCell: UITableViewCell {

    @IBOutlet weak var imgNews: UIImageView!
    @IBOutlet weak var lblTitleNews: UILabel!
    @IBOutlet weak var lblContentNews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
