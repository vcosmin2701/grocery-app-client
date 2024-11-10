//
//  LoginScreen.swift
//  grocery-app-client
//
//  Created by Vladut Cosmin on 10.11.2024.
//

import SwiftUI

struct LoginScreen: View {
    
    @EnvironmentObject private var model: GroceryModel
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        !username.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    
    private func login() async {
        
    }
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            
            HStack {
                Button("Login"){
                    Task {
                        // login()
                    }
                }.buttonStyle(.borderless)
                    .disabled(!isFormValid)
            }
        }
        .navigationTitle("Login")
    }
}

#Preview {
    NavigationStack {
        LoginScreen()
            .environmentObject(GroceryModel())
    }
}
