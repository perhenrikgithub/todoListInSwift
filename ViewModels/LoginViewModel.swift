//
//  LoginViewModel.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 04/07/2023.
//

import Foundation

enum LoginErrorMessages {
    case emailIsEmpty
    case passwordIsEmpty
}

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessages: [LoginErrorMessages] = []
    
    init() {}
    
    func isLoginOk() -> Bool {
        errorMessages.removeAll() // removes all former errormessages since a new attept is made and potential errors are rechecked
        
        if email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty  {
            errorMessages.append(LoginErrorMessages.emailIsEmpty)
        }
        
        if password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            errorMessages.append(LoginErrorMessages.passwordIsEmpty)
        }
        
        if !errorMessages.isEmpty {
            print("\nlogin failed.")
            print(errorMessages)
            return false
        }
        
        print("login worked!")
        return true
    }
    
    func login() {
       // 
    }
}
