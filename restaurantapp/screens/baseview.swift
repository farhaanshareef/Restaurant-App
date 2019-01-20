//
//  baseview.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

@IBDesignable class baseview: UIView{
    // Two Initializer one with frame and one with story board
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.configure()
}
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
}
    //for additional setup
func configure()
{
    
}
}
