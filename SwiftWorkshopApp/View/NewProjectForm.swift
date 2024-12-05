//
//  NewProjectForm.swift
//  SwiftWorkshopApp
//
//  Created by gdaalumno on 04/12/24.
//

import SwiftUI

struct NewProjectForm: View {
    @Binding var newProject: Project
    var body: some View {
        Form {
            TextField("Titulo", text: $newProject.title)
            TextEditor(text: $newProject.description)
                .frame(height: 150)
            
            Section {
                DatePicker("Fecha de inicio", selection: $newProject.startDate, displayedComponents: .date)
                Toggle(isOn: $newProject.inProgress) {
                    Text("En progreso...")
                }
            }
            
            Section {
                TextField("Nombre", text: $newProject.author.name)
                TextField("Correo", text: $newProject.author.email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                TextField("Número de teléfono", text: $newProject.author.number)
                    .textContentType(.telephoneNumber)
                    .keyboardType(.emailAddress)
            } header: {
                Text("Author")
            }
        }
    }
}

#Preview {
    NewProjectForm(newProject: .constant(Project()))
}
