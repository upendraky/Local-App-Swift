//
//  OTPView.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import SwiftUI

struct OTPView: View {

    let phoneNumber: String

    @State private var otp = ""

    var body: some View {

        VStack(spacing: 20) {

            Text("OTP Verification")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text(phoneNumber)

            TextField("Enter OTP", text: $otp)
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)

            NavigationLink {

                UserTypeSelectionView()

            } label: {

                Text("Verify OTP")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    OTPView(phoneNumber: "9999999999")
}