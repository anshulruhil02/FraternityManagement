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
    private var authVM: AuthVM
    
    init(authVM: AuthVM){
        self.authVM = authVM
    }
    
    func loginButtonTapped() async{
        do {
            let user = try await authVM.login(email: email, password: password)
            print("Login Successful for user: \(user)")
        } catch {
            print("Login failed with error: \(error)")
        }
    }
    
    func signupButtinTapped(){
        print ("Signup button tapped")
    }
    
    func forgotPassswordBtnTapped() {
        print("Forgot Password Button Presssed")
    }
        
}
