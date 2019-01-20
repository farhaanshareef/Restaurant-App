//
//  locationview.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

@IBDesignable class locationview: baseview {

    @IBOutlet weak var allowbutton : UIButton!
    @IBOutlet weak var denybutton : UIButton!
    var didTapAllow:(() -> Void)?
    @IBAction func allowaction(_sender :UIButton)
    {
        didTapAllow?()
    }
    @IBAction func denyaction(_sender :UIButton)
    {
        
    }

}
