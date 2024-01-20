//
//  FraternityManagementApp.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import SwiftUI
import FirebaseCore

@main
struct FraternityManagementApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let authService = AuthVM(provider: FBAuthServiceProvider())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authService)
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
