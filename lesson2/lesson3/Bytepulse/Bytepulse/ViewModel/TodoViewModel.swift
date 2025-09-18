//
//  TodoViewModel.swift
//  Bytepulse
//
//  Created by alex weldu on 9/15/2025.
//
import SwiftUI

final class TodoViewModel : ObservableObject {
    @Published var todos: [Todo] = []
    
    func addTodo(_ todo: Todo) {
        self.todos.append(todo)
    }
    
    func removeTodo(at index: Int) {
        self.todos.remove(at: index)
    }
    
    func updateTodo(_ todo: Todo, at index: Int) {
        self.todos[index] = todo
    }
    
    func toggleTodoCompletion(at index: Int) {
        self.todos[index].isCompleted.toggle()
    }
   
}
