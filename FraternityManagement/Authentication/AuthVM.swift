//
//  AuthVM.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import Foundation

class AuthVM: ObservableObject {
    private var provider: AuthServiceProvider
    private let isLoggedInKey = "isLoggedIn"

    @Published var isLoggedIn: Bool {
           didSet {
               UserDefaults.standard.set(isLoggedIn, forKey: isLoggedInKey)
           }
    }
    
    init(provider: AuthServiceProvider) {
        self.provider = provider
        self.isLoggedIn = UserDefaults.standard.bool(forKey: isLoggedInKey)
    }
    
    func login(email:String, password: String) async throws -> User {
        let user = try await provider.login(email: email, password: password)
        DispatchQueue.main.async {
            self.isLoggedIn = true
        }
        return user
    }
    
    func logout () async throws -> Bool {
        try await provider.logout()
        DispatchQueue.main.async {
            self.isLoggedIn = false
        }
        return true
    }
    
}
