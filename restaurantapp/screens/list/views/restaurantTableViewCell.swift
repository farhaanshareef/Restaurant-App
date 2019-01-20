//
//  restaurantTableViewCell.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class restaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView : UIImageView!
    @IBOutlet weak var makerImageView : UIImageView!
    @IBOutlet weak var restaurantNameLabel : UILabel!
    @IBOutlet weak var locationLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
