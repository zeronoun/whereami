//
//  ViewController.swift
//  Where am I
//
//  Created by noun on 10.29.15.
//  Copyright © 2015 noun. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
    
    var cl:CLLocationManager?

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cl = CLLocationManager()
        //need a variable to collection corelocation data
        
        cl?.requestWhenInUseAuthorization()
        //collection permission, must match plist
        
        mapView.showsUserLocation = true
        //shows user location
        
        mapView.userTrackingMode = MKUserTrackingMode.Follow
        //auto-centers map on user location
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

