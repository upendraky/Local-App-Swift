import SwiftUI

struct ServiceDetailsView: View {

    let serviceName: String

    var body: some View {

        VStack(spacing: 20) {

            Text(serviceName)
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Base Service Charge")
                .font(.headline)

            Text("₹200")
                .font(.title)

            NavigationLink {

                MapBookingView(serviceName: serviceName)

            } label: {

                Text("Find Nearby Providers")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ServiceDetailsView(serviceName: "Plumber")
}
