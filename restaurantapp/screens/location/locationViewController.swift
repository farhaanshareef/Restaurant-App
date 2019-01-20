//
//  locationViewController.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class locationViewController: UIViewController {

    @IBOutlet var locationview: locationview!
    var locationservice:locationservices?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationview.didTapAllow={[weak self] in
            self?.locationservice?.requestlocationauthorization()
        }
        locationservice?.didChangeStatus = {[weak self] success in
            if success{
                self?.locationservice?.getlocation()
            }
            }
        locationservice?.newlocation={[weak self] result in
        switch result{
        case .success(let location):
            print(location)
        case .failure(let error):
            assertionFailure("Error getting user location \(error)")
        }
        }
    }
}
