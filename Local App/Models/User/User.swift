//
//  User.swift
//  Local App
//
//  Created by Upendra Kumar Yadav on 13/06/26.
//


import Foundation

struct User: Identifiable, Codable {

    let id: String
    let name: String
    let phoneNumber: String
    let userType: UserType
}

enum UserType: String, Codable {

    case customer
    case provider
}