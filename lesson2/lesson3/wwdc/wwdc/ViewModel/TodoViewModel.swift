import SwiftUI
import Combine
 
//
//  TodoViewModel.swift
//  wwdc
//
//  Created by alex weldu on 9/16/2025.
//

@MainActor
final class TodoViewModel: ObservableObject {
    
    @Published var todos: [Todo] = []
    
   
    
    func addTodo(_ todo: Todo) {
        todos.append(todo)
    }
    
    func removeTodo(_ todo: Todo) {
        todos.removeAll { $0.id == todo.id }
    }
    
    
    func toggleTodoCompletion(_ todo: Todo) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
}
