//
//  HomeViewModel.swift
//  MVVM SwiftUI
//
//  Created by Cedan Misquith on 24/08/23.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = [
        User.init(firstName: "Michael",
                  lastName: "Lawson",
                  email: "michael.lawson@reqres.in",
                  avatar: "https://reqres.in/img/faces/7-image.jpg"),
        User.init(firstName: "Lindsay",
                  lastName: "Ferguson",
                  email: "lindsay.ferguson@reqres.in",
                  avatar: "https://reqres.in/img/faces/8-image.jpg"),
        User.init(firstName: "Tobias",
                  lastName: "Funke",
                  email: "tobias.funke@reqres.in",
                  avatar: "https://reqres.in/img/faces/9-image.jpg"),
        User.init(firstName: "Byron",
                  lastName: "Fields",
                  email: "byron.fields@reqres.in",
                  avatar: "https://reqres.in/img/faces/10-image.jpg"),
        User.init(firstName: "George",
                  lastName: "Edwards",
                  email: "george.edwards@reqres.in",
                  avatar: "https://reqres.in/img/faces/11-image.jpg"),
        User.init(firstName: "Rachel",
                  lastName: "Howell",
                  email: "rachel.howell@reqres.in",
                  avatar: "https://reqres.in/img/faces/12-image.jpg")
    ]
}
