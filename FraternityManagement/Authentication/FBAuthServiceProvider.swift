//
//  FBAuthServiceProvider.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import Foundation
import FirebaseAuth

class FBAuthServiceProvider: AuthServiceProvider {
    
    func login(email: String, password: String) async throws -> User {
        let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return User(id: authResult.user.uid, email: authResult.user.email ?? "")
    }
    
    func logout() async throws -> Bool {
        do{
            try Auth.auth().signOut()
            return true
        } catch {
            throw error
        }
    }
    
//    func register(email: String, password: String) async throws -> User {
//        <#code#>
//    }
//    
//    func resetPassword(email: String) async throws -> Bool {
//        <#code#>
//    }
//    
//    func changePassword(userID: String, newPassword: String) async throws {
//        <#code#>
//    }
//    
//    func deleteUserAccount(userId: String) async throws {
//        <#code#>
//    }
//    
//    func sendVerification() async throws {
//        <#code#>
//    }
//    
//    func isEmailVerified() async throws -> Bool {
//        <#code#>
//    }
    
    
}
