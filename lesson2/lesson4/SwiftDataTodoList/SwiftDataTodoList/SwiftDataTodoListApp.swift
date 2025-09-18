//
//  SwiftDataTodoListApp.swift
//  SwiftDataTodoList
//
//  Created by alex weldu on 9/18/2025.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTodoListApp: App {
    

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TodoItem.self)
         
    }
}
