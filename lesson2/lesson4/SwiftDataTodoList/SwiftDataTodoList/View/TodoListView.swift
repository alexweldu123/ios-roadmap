//
//  TodoListView.swift
//  SwiftDataTodoList
//
//  Created by alex weldu on 9/18/2025.
//

import SwiftUI
import SwiftData
struct TodoListView: View {
    @Environment(\.modelContext) private var context
    
    @StateObject private var viewModel = TodoViewModel()
    @State private var newTodoTitle = ""
    
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                HStack {
                    TextField("New Todo", text: $newTodoTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button("Add") {
                        self.viewModel.addTodo(title: newTodoTitle,context: context)
                        self.newTodoTitle = ""
                    }
                }
                .padding()
                
                List(viewModel.todos) { todo in
                    ForEach(viewModel.todos) { todo in
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    viewModel.toggleCompletion(todo: todo, context: context)
                                }
                            
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                        }
                    }
                    .onDelete { indexSet in
                        for index in indexSet {
                            let todo = viewModel.todos[index]
                            viewModel.deleteTodo(todo: todo, context: context)
                        }
                    }
                }
            }.navigationTitle("Todo List")
                .onAppear {
                    viewModel.fetchTodos(from: context)
                }
        }
    }
}

#Preview {
    TodoListView()
}
