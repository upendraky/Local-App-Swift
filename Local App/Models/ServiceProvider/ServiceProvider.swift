//
//  ServiceProvider.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import Foundation
import CoreLocation

struct ServiceProvider: Identifiable {

    let id = UUID()

    let name: String
    let serviceType: String

    let latitude: Double
    let longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}