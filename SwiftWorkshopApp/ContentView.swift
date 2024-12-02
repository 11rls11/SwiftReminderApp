//
//  ContentView.swift
//  SwiftWorkshopApp
//
//  Created by gdaalumno on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
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
            
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(.roundedBorder)
                
                .border(focus == .emailField ? Color.red : Color.clear)
                .focused($focus, equals: .emailField)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(.roundedBorder)
                
                .border(focus == .passwordField ? Color.red : Color.clear)
                .focused($focus, equals: .passwordField)

            Button(action: {
                
            }) {
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
        }
        .padding(32) 
        .background(Color(uiColor: .systemBackground))
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
