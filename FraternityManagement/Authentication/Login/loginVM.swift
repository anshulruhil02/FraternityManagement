//
//  LoginVM.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import Foundation

class LoginVM: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    func loginButtonTapped(){
        print("login button tapped")
    }
    
    func signupButtinTapped(){
        print ("Signup button tapped")
    }
    
    func forgotPassswordBtnTapped() {
        print("Forgot Password Button Presssed")
    }
        
}
