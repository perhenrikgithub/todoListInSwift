//
//  TodoListApp.swift
//  TodoList
//
//  Created by Per Henrik Mork Viken on 04/07/2023.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
