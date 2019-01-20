//
//  locationservices.swift
//  restaurantapp
//
//  Created by Farhan on 12/30/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import Foundation
import CoreLocation

enum result<T> {
    case success(T)
    case failure(Error)
    
}
final class locationservices: NSObject {
    private let manager: CLLocationManager
    init(manager:CLLocationManager = .init())
{
    self.manager=manager
    super.init()
    manager.delegate=self
}
    var newlocation:((result<CLLocation>) -> Void)?
    var didChangeStatus:((Bool) -> Void)?
    var status:CLAuthorizationStatus
    {
        return CLLocationManager.authorizationStatus()
    }
    func requestlocationauthorization()
    {
        manager.requestWhenInUseAuthorization()
    }
    func getlocation()
    {
        manager.requestLocation()
    }
}
extension locationservices: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        newlocation?(.failure(error))
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location=locations.sorted(by: {$0.timestamp>$1.timestamp}).first{
            newlocation?(.success(location))
        }
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status{
        case .notDetermined, .restricted,.denied:
            didChangeStatus?(false)
        default:
            didChangeStatus?(true)
        }
    }
}
