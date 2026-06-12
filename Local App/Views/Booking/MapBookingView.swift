import SwiftUI
import MapKit
import CoreLocation


struct MapBookingView: View {

    let serviceName: String

    @StateObject private var locationManager = LocationManager()

    @State private var cameraPosition: MapCameraPosition = .automatic

    let providers = ProviderService.providers

    func calculateDistance(
        to provider: ServiceProvider
    ) -> Double {

        guard let userLocation = locationManager.location else {
            return 0
        }

        let providerLocation = CLLocation(
            latitude: provider.latitude,
            longitude: provider.longitude
        )

        return userLocation.distance(
            from: providerLocation
        ) / 1000
    }

    var body: some View {

        VStack {

            Map(position: $cameraPosition) {

                if let location = locationManager.location {

                    Marker(
                        "You",
                        coordinate: location.coordinate
                    )
                }

                ForEach(providers) { provider in

                    Marker(
                        provider.name,
                        coordinate: provider.coordinate
                    )
                }
            }

            List(providers) { provider in

                let price = PricingService.calculateTotalPrice(
                    service: provider.serviceType,
                    distance: calculateDistance(to: provider)
                )

                VStack(alignment: .leading) {

                    Text(provider.name)
                        .font(.headline)

                    Text(provider.serviceType)

                    Text(
                        String(
                            format: "%.2f km away",
                            calculateDistance(to: provider)
                        )
                    )

                    Text("₹\(Int(price))")
                        .font(.headline)
                        .foregroundColor(.green)

                    Button("Book Now") {

                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .frame(height: 250)

            Text(serviceName)
                .font(.title2)
                .padding()
        }
        
        .onAppear {
            locationManager.requestLocation()
        }
    }
}
