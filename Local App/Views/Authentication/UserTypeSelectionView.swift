//
//  UserTypeSelectionView.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import SwiftUI

struct UserTypeSelectionView: View {

    var body: some View {

        VStack(spacing: 25) {

            Text("Select Account Type")
                .font(.title)
                .fontWeight(.bold)

            NavigationLink {

                HomeView()

            } label: {

                Text("Customer")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }

            NavigationLink {

                ProviderDashboardView()

            } label: {

                Text("Service Provider")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserTypeSelectionView()
}