//
//  LoginView.swift
//  ToDoList
//
//  Created by Marco Zamora on 6/5/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subTitle: "Get things done",
                           angle: 15,
                           background: .pink)
                //Login form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TDLButton(title: "Log in", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Create account
                VStack {
                    Text("New around here")
                    NavigationLink("Create an account ", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
