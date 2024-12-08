# SwiftWorkshopApp

SwiftWorkshopApp is an iOS application designed during a Workshop organized by the TECoding Stundent's Group at ITESM GDL campus to help users create, manage, and track projects or activities. Built with SwiftUI and integrated with Firebase services, it provides a seamless experience for user authentication, data persistence, and reminder scheduling. With features like secure login, project creation, and real-time syncing, it aims to streamline task management and enhance productivity.

---

## Key Features

- **User Authentication (FirebaseAuth)**:  
  Register and log in securely using an email and password. The authentication state is persistently monitored to ensure a smooth user experience and secured access to user-specific data.

- **Data Management (Firestore)**:  
  Store and retrieve user-generated projects from Firestore, a scalable and flexible NoSQL database. Easily create, read, update, and delete projects, ensuring data consistency and real-time syncing across sessions and devices.

- **SwiftUI-Driven UI**:  
  The app’s interface is built entirely with SwiftUI, ensuring a modern, intuitive, and responsive user experience. Components like lists, forms, and navigation stacks cleanly separate concerns and improve maintainability.

- **Project Organization**:  
  Create detailed projects including a title, description, start date, and progress state. Assign author details (name, email, phone number) to keep track of contributors, and easily search or filter through the list of projects.

- **Activity Reminders (Future Expansion)**:  
  While currently focused on managing project data, the codebase sets the groundwork for integrating reminders and notifications. Future enhancements can leverage iOS’s notification frameworks to schedule activity prompts and follow-up reminders.

---

## Technologies Used

- **SwiftUI**: Provides a declarative interface and state-driven design.
- **FirebaseAuth**: Handles user registration and authentication processes.
- **Cloud Firestore**: Manages project data storage, retrieval, and real-time updates.
- **Property Wrappers & Observables**: Leverages `@State`, `@Bindable`, and `@Observable` for reactive UI updates, ensuring data consistency and up-to-date views.
  
---

## Project Structure

```
├── AuthViewModel.swift        // Handles user login and registration with FirebaseAuth
├── ProjectsViewModel.swift    // Manages Firestore operations: fetching, adding, and deleting projects
├── Project.swift              // Defines the Project and Author models
├── ContentView.swift          // Login screen and initial interface for authenticated access
├── ProjectsList.swift         // Displays a searchable, editable list of projects
├── NewProjectForm.swift       // Form to create and edit project details
├── ProjectPreview.swift       // UI component for a concise project summary
└── AppNavigation.swift        // High-level navigation structure, switches between login and project list
```

---

## Getting Started

1. **Setup Firebase**:  
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add an iOS app to the project and download the `GoogleService-Info.plist`.
   - Integrate Firebase into your Xcode project following [Firebase documentation](https://firebase.google.com/docs/ios/setup).

2. **Install Dependencies**:  
   - Ensure you have the latest version of Xcode and Swift. Use Swift Package Manager to integrate Firebase or add `FirebaseAuth` and `FirebaseFirestore` pods via `Podfile`.

   Example with CocoaPods:
   ```bash
   pod init
   pod 'Firebase/Auth'
   pod 'Firebase/Firestore'
   pod install
   ```
   
    - Configure the App:
        Place the GoogleService-Info.plist file in your Xcode project’s root.
        Initialize Firebase in App.swift or AppDelegate.

    - Run the App:
    Open the project in Xcode and run it on a simulator or a physical device. On first launch, you can register a new account and immediately start adding and managing projects.

---

## Usage Guide

- Register a New Account:
    On the login screen, enter your email and password, then tap Register. This creates a new user in FirebaseAuth.

- Log In:
    After registration, or if you have an existing account, simply tap Login using the same credentials.

- Manage Projects:
    - Once logged in, you’ll see a list of your projects. From here, you can:
        - Create a new project: Tap the + button and fill out the form.
        - Update project status: Swipe on a project to mark it as in progress or completed.
        - Delete a project: Swipe on a project and select the delete action.

- Search and Filter:
    - Use the search bar to filter projects by title, making it easier to find specific tasks.

---

## Contributing

Contributions, bug reports, and feature requests are welcome. Please open an issue or submit a pull request with your proposed changes. When contributing, ensure adherence to best practices, code quality, and provide a detailed description of the changes.
License

---

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

For any questions or further assistance, feel free to reach out!
