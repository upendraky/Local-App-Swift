//
//  LoginView.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import SwiftUI

struct LoginView: View {

    @State private var phoneNumber = ""

    var body: some View {

        NavigationStack {

            VStack(spacing: 30) {

                Spacer()

                Image(systemName: "house.and.wrench.fill")
                    .font(.system(size: 80))

                Text("Local App")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                TextField("Enter Mobile Number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)

                NavigationLink {

                    OTPView(phoneNumber: phoneNumber)

                } label: {

                    Text("Send OTP")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}