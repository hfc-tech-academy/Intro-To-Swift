//
//  ViewController.swift
//  temperature
//
//  Created by Will Schenk on 11/19/14.
//  Copyright (c) 2014 Will Schenk. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager:CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        convertFotC("")
        
        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationLabel.text = "Looking for location"
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var slider: UISlider!
    @IBOutlet var temperatureInC: UILabel!
    @IBOutlet var temperatureInF: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    @IBAction func convertFotC( sender: AnyObject ) {
        var c = ((slider.value - 32) * 5) / 9;

        temperatureInF.text = "\(slider.value) degrees F"
        temperatureInC.text = "\(c) degrees C"
    }

    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        var location:CLLocation = locations[locations.count-1] as CLLocation
        
        locationLabel.text = "Lat \(location.coordinate.latitude) Long \(location.coordinate.longitude)"

        if (location.horizontalAccuracy > 0) {
            self.locationManager.stopUpdatingLocation()
            locationLabel.text = "Lat \(location.coordinate.latitude) Long \(location.coordinate.longitude)"
        }
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println(error)
        locationLabel.text = "Can't get your location!"
    }

}

