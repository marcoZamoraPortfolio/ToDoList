//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Marco Zamora on 6/5/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init()
    {
        
    }
        
    func login()
    {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
    }
    
    func validate()
    {
        
    }
        
        
}
