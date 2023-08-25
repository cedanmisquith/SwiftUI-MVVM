//
//  View.swift
//  MVVM SwiftUI
//
//  Created by Cedan Misquith on 23/08/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle().fill(.gray.gradient)
                VStack(alignment: .center) {
                    Text("Sign In")
                        .font(.system(.title))
                    Group {
                        TextField("Enter Username", text: $viewModel.username)
                            .padding(.bottom, 10)
                        SecureField("Enter Password", text: $viewModel.password)
                    }
                    .padding([.leading, .trailing])
                    .textFieldStyle(.roundedBorder)
                    Button {
                        viewModel.validateLogin()
                    } label: {
                        Text("Login")
                            .frame(width: 150 , height: 50, alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                    .padding(.top, 10)
                }
            }
            .navigationDestination(isPresented: $viewModel.shouldNavigate) {
                UserView(loginViewModel: viewModel)
            }
            .ignoresSafeArea()
        }
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
