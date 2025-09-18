//
//  TodoViewModel.swift
//  mvvmtuts
//
//  Created by alex weldu on 9/15/2025.
//

import Foundation

class TodoViewModel : ObservableObject {
 
    
    @Published var todos: [Todo] = []

        func addTodo(title: String) {
            let trimmed = title.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !trimmed.isEmpty else { return }
            todos.append(Todo(title: trimmed))
        }

        func toggleTodoCompletion(_ todo: Todo) {
            guard let index = todos.firstIndex(where: { $0.id == todo.id }) else { return }
            todos[index].isCompleted.toggle()
        }

        func deleteTodo(at offsets: IndexSet) {
            todos.remove(atOffsets: offsets)
        }
    
    func updateTodo(todo :Todo) {
        guard let index = todos.firstIndex(where: { $0.id == todo.id }) else { return }
        todos[index] = todo
    }
}
