//
//  LocationManager.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import Foundation
import CoreLocation
import Combine

final class LocationManager: NSObject, ObservableObject {

    @Published var location: CLLocation?

    private let manager = CLLocationManager()

    override init() {
        super.init()

        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
    }

    func requestLocation() {

        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {

    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    ) {

        guard let location = locations.first else {
            return
        }

        self.location = location
    }
}
