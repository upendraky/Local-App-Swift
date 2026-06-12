//
//  PricingService.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import Foundation

final class PricingService {

    static func baseFee(
        for service: String
    ) -> Double {

        switch service {

        case "Plumber":
            return 200

        case "Electrician":
            return 250

        case "Mechanic":
            return 300

        default:
            return 200
        }
    }

    static func calculateTotalPrice(
        service: String,
        distance: Double
    ) -> Double {

        let baseFee = baseFee(for: service)

        let travelRate = 10.0

        let travelCost =
            distance * 2 * travelRate

        return baseFee + travelCost
    }
    
}
