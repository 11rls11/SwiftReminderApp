//
//  ContentView.swift
//  SwiftWorkshopApp
//
//  Created by gdaalumno on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @Bindable var authViewModel: AuthViewModel
    @FocusState private var focus: Field?
    
    enum Field {
        case emailField
        case passwordField
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            TextField("Email", text: $authViewModel.email)
                .padding()
                .textFieldStyle(.roundedBorder)
                
                .border(focus == .emailField ? Color.red : Color.clear)
                .focused($focus, equals: .emailField)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Password", text: $authViewModel.password)
                .padding()
                .textFieldStyle(.roundedBorder)
                
                .border(focus == .passwordField ? Color.red : Color.clear)
                .focused($focus, equals: .passwordField)
            
            ViewThatFits {
                HStack {
                    registerButton()
                    loginButton()
                }
                .disabled(self.authViewModel.email.isEmpty||self.authViewModel.password.isEmpty)
                
                VStack {
                    registerButton()
                    loginButton()
                }
                .disabled(self.authViewModel.email.isEmpty||self.authViewModel.password.isEmpty)
            }
        }
        .padding(32)
        .background(Color(uiColor: .systemBackground))
        .ignoresSafeArea()
    }
    
    @ViewBuilder private func registerButton() -> some View {
        Button {
            Task {
                await self.authViewModel.registerUser()
            }
        } label: {
            Text("Register")
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
        }
        .padding(.top, 20)
        Spacer()
        .buttonStyle(.bordered)
    }
    
    @ViewBuilder private func loginButton() -> some View {
        Button {
            Task {
                await self.authViewModel.loginWithEmailPassword()
            }
        } label: {
                Text("Login")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.headline)
            }
        .padding(.top, 20)
        Spacer()
        .buttonStyle(.bordered)
        }
    }

