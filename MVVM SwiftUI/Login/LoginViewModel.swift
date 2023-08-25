//
//  LoginViewModel.swift
//  MVVM SwiftUI
//
//  Created by Cedan Misquith on 24/08/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var shouldNavigate: Bool = false
    func validateLogin() {
        if username != "" || password != "" {
            shouldNavigate = true
        }
    }
}
