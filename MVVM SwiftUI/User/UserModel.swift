//
//  HomeModel.swift
//  MVVM SwiftUI
//
//  Created by Cedan Misquith on 24/08/23.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let email: String
    let avatar: String
    init(firstName: String, lastName: String, email: String, avatar: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.avatar = avatar
    }
}
