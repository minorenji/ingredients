//
//  SignupViewModel.swift
//  ingredients
//
//  Created by Sean Lim on 7/4/23.
//

import Foundation

class SignupViewModel: ObservableObject {
    @Published var email = "";
    @Published var password = "";
    @Published var confirmPassword = "";
    
    // MARK: - Validation Functions
    
    func passwordsMatch() -> Bool {
        password == confirmPassword
    }
    
    func isPasswordValid() -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}\\[\\]:;<>,.?/~_+-=|\\\\]).{8,32}$")
        return passwordTest.evaluate(with: password)
    }
        
    func isEmailValid() -> Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", "[\\w\\-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}")

        return emailTest.evaluate(with: email)
    }
    
    var isSignupComplete: Bool {
        if !passwordsMatch() ||
            !isPasswordValid() ||
            !isEmailValid() {
            return false
        }
        return true
    }
}
