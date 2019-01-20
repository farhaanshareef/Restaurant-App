//
//  detailfoodview.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit
import MapKit
@IBDesignable class detailfoodview : baseview
{
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var pagecontrol : UIPageControl!
    @IBOutlet weak var pricelabel: UILabel!
    @IBOutlet weak var hourslabel: UILabel!
    @IBOutlet weak var locallabel: UILabel!
    @IBOutlet weak var ratinglabel:UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func handlecontrol(_sender:UIPageControl)
    {
        
    }
}
