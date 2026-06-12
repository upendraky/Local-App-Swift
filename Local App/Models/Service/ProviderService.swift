//
//  ProviderService.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import Foundation

final class ProviderService {

    static let providers: [ServiceProvider] = [

        ServiceProvider(
            name: "Ramesh",
            serviceType: "Plumber",
            latitude: 19.078,
            longitude: 72.880
        ),

        ServiceProvider(
            name: "Amit",
            serviceType: "Electrician",
            latitude: 19.080,
            longitude: 72.882
        ),

        ServiceProvider(
            name: "Suresh",
            serviceType: "Mechanic",
            latitude: 19.082,
            longitude: 72.885
        )
    ]
}