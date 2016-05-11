//
//  ViewController.swift
//  FindFriends
//
//  Created by Jonathan Alvarez on 5/10/16.
//  Copyright © 2016 Jonathan Alvarez. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var ChangeView: UISegmentedControl!
    
    @IBAction func zoomIn(sender: AnyObject) {
        let userLocation = mapView.userLocation
        
        let region = MKCoordinateRegionMakeWithDistance(
            userLocation.location!.coordinate, 2, 2)
        
        mapView.setRegion(region, animated: true)
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation
        userLocation: MKUserLocation) {
        mapView.centerCoordinate = userLocation.location!.coordinate
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self 
        mapView.showsUserLocation = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

