import SwiftUI

struct HomeView: View {

    let services = [
        "Plumber",
        "Electrician",
        "Mechanic",
        "Carpenter",
        "AC Repair",
        "Painter",
        "Cleaning",
        "Appliance Repair"
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(alignment: .leading) {

                    Text("Hello 👋")
                        .font(.title)

                    Text("Book a service at your doorstep")
                        .foregroundColor(.secondary)

                    LazyVGrid(columns: columns, spacing: 20) {

                        ForEach(services, id: \.self) { service in

                            NavigationLink {

                                ServiceDetailsView(serviceName: service)

                            } label: {

                                VStack {

                                    Image(systemName: "wrench.and.screwdriver.fill")
                                        .font(.system(size: 40))

                                    Text(service)
                                        .foregroundColor(.primary)
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: 120)
                                .background(Color(.systemGray6))
                                .cornerRadius(16)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
            }
            .navigationTitle("Local App")
        }
    }
}

#Preview {
    HomeView()
}
