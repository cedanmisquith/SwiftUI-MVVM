//
//  HomeView.swift
//  MVVM SwiftUI
//
//  Created by Cedan Misquith on 23/08/23.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var loginViewModel: LoginViewModel
    @StateObject private var viewModel = UserViewModel()
    var body: some View {
        VStack {
            Text("Welcome back \n\(loginViewModel.username)")
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            List {
                ForEach(viewModel.users, id: \.firstName) { user in
                    CardView(firstName: user.firstName, lastName: user.lastName, profileImageURL: user.avatar, email: user.email)
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .scrollIndicators(.hidden)
        }
    }
}

struct CardView: View {
    var firstName: String
    var lastName: String
    var profileImageURL: String
    var email: String
    var body: some View {
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: profileImageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 75, height: 75)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75)
                        .cornerRadius(37.5)
                        .padding()
                case .failure(_):
                    Image(systemName: "photo")
                        .frame(width: 75, height: 75)
                @unknown default:
                    Image(systemName: "photo")
                        .frame(width: 75, height: 75)
                }
            }
            VStack(alignment: .leading) {
                Group {
                    Text("\(firstName) \(lastName)")
                        .font(.system(size: 14))
                    Text(email)
                        .font(.system(size: 14))
                }
                .padding(.trailing, 20)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(loginViewModel: LoginViewModel.init())
    }
}
