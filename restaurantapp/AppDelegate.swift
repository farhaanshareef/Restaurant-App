//
//  AppDelegate.swift
//  restaurantapp
//
//  Created by Farhan on 12/29/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit
import Moya
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow()
    let locationservice=locationservices()
    let storyboard=UIStoryboard(name: "Main",bundle:nil)
    let service=MoyaProvider<YelpService.BussinessProvider>()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        service.request(.search(lat:33.71570000 ,long:+73.02940000))
        {(result) in
            switch result{
            case .success(let response):
                print(try? JSONSerialization.jsonObject(with: response.data, options: []))
            case .failure(let error):
                print("Error:\(error)")
            }
        }
        switch locationservice.status{
        case .notDetermined,.denied,.restricted:
            let locationViewController=storyboard.instantiateViewController(withIdentifier: "locationViewController") as? locationViewController
            locationViewController?.locationservice=locationservice
            window.rootViewController = locationViewController
        default:
            assertionFailure()
        }
        window.makeKeyAndVisible()
        return true
    }



}
