//
//  AuthService.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import Foundation

protocol AuthServiceProvider {
    func login(email: String, password: String) async throws -> User
    func logout() async throws -> Bool
//    func register(email: String, password: String) async throws -> User
//    func resetPassword(email: String) async throws -> Bool
//    func changePassword(userID: String, newPassword: String) async throws
//    func deleteUserAccount(userId: String) async throws
//    func sendVerification() async throws
//    func isEmailVerified() async throws -> Bool
}

