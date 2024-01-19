//
//  LoginView.swift
//  FraternityManagement
//
//  Created by Anshul Ruhil on 2024-01-19.
//

import SwiftUI

import SwiftUI

struct LoginView: View {
    @StateObject var vm: LoginVM

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.gray.opacity(0.3)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)

            VStack {
                //MARK: App Title
                Text("Sigma Chi Management")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding()
                VStack(spacing: 20) { // replaced Paddings.mediumPadding1 with a numerical value
                    //MARK: Email Text Field
                    TextField("Email", text: $vm.email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 20) // replaced Paddings.mediumPadding2 with a numerical value
                        .autocorrectionDisabled()
                    //MARK: Password Text Field
                    SecureField("Password", text: $vm.password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 20) // replaced Paddings.mediumPadding2 with a numerical value
                        .autocorrectionDisabled()

                    //MARK: Login Button
                    Button(action: {
                        vm.loginButtonTapped()
                    }) {
                        HStack {
                            Image(systemName: "arrow.right")
                            Text("Login")
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(5.0)
                    }
                    .padding(.horizontal, 20) // replaced Paddings.mediumPadding2 with a numerical value
                    
                    //MARK: Signup Button
                    Button(action: {
                        print("Go to signup")
                        Task {
                            vm.signupButtinTapped()
                        }
                    }) {
                        Text("Don't have an account? Sign up")
                    }
                    .padding(.top, 10) // replaced Paddings.smallPadding5 with a numerical value
                }
                .padding(.top, 50) // replaced Paddings.largePadding3 with a numerical value
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an instance of your ViewModel
        let viewModel = LoginVM()

        // Pass the ViewModel instance to your LoginView
        LoginView(vm: viewModel)
            .previewDevice("iPhone 12") // Specify the device for the preview
            // You can add more modifiers to customize the preview environment
    }
}
