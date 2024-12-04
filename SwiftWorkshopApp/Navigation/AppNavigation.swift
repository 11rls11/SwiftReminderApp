//
//  AppNavigation.swift
//  SwiftWorkshopApp
//
//  Created by gdaalumno on 04/12/24.
//

import SwiftUI

struct AppNavigation: View {
    @State var authViewModel = AuthViewModel()
    @State var projectsViewModel = ProjectsViewModel()
    
    var body: some View {
        VStack {
            if self.authViewModel.user == nil {
                NavigationStack {
                ContentView(authViewModel: self.authViewModel)
                    .navigationTitle("Authentication")
                }
            } else {
                NavigationStack {
                    ProjectsList(viewModel: self.projectsViewModel)
                }
            }
        }
    }
}

#Preview {
    AppNavigation()
}
