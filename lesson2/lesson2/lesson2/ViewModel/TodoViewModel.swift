//
//  TaskViewModel.swift
//  lesson2
//
//  Created by alex weldu on 9/15/2025.
//
import SwiftUI

@MainActor
final class TodoViewModel: ObservableObject {
    
    @Published var todos: [Todo] = []
    
        func addTodo(title: String) {
            let newTodo = Todo(title: title)
            todos.append(newTodo)
        }
        
        // Toggle completion
        func toggleTodoCompletion(_ todo: Todo) {
            if let index = todos.firstIndex(where: { $0.id == todo.id }) {
                todos[index].isCompleted.toggle()
            }
        }
        
        // Delete todo
        func deleteTodo(at offsets: IndexSet) {
            todos.remove(atOffsets: offsets)
        }
    
}
