import SwiftUI
import SwiftData
import Combine

@MainActor
class TodoViewModel: ObservableObject {
    @Environment(\.modelContext) private var context
    
    @Published var todos: [TodoItem] = []
    
    func fetchTodos(from context: ModelContext) {
        let descriptor = FetchDescriptor<TodoItem>(sortBy: [SortDescriptor(\.createdAt)])
        if let results = try? context.fetch(descriptor) {
            todos = results
        }
    }
    
    func addTodo(title: String, context: ModelContext) {
        let newTodo = TodoItem(title: title)
        context.insert(newTodo)
        try? context.save()
        fetchTodos(from: context)
    }
    
    func toggleCompletion(todo: TodoItem, context: ModelContext) {
        todo.isCompleted.toggle()
        try? context.save()
        fetchTodos(from: context)
    }
    
    func deleteTodo(todo: TodoItem, context: ModelContext) {
        context.delete(todo)
        try? context.save()
        fetchTodos(from: context)
    }
}
