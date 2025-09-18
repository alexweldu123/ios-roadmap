//
//  TodoListView.swift
//  mvvmtuts
//
//  Created by alex weldu on 9/15/2025.
//

import SwiftUI

struct TodoListView: View {
    @StateObject private var viewModel = TodoViewModel()
    @State private var newTodoTitle = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Input row
                HStack {
                    TextField("Enter new task", text: $newTodoTitle)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.blue.opacity(0.5), lineWidth: 1)
                        )
                        .shadow(color: Color.black.opacity(0.05), radius: 3, x: 0, y: 2)
                    Button {
                        viewModel.addTodo(title: newTodoTitle)
                        newTodoTitle = ""
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 28))
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                
                // List
                List {
                    ForEach(viewModel.todos) { todo in
                        NavigationLink(destination: EditTodoView(todo: todo, viewModel: viewModel)) {
                            HStack {
                                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                                    .onTapGesture {
                                        viewModel.toggleTodoCompletion(todo)
                                    }
                                Text(todo.title)
                                    .strikethrough(todo.isCompleted, color: .gray)
                                    .foregroundStyle(todo.isCompleted ? .secondary : .primary)
                            }
                        }
                    }
                    .onDelete(perform: viewModel.deleteTodo)
                }
            }
            .navigationTitle("Todos")
            .toolbar { EditButton() }
        }
    }
}

#Preview {
    TodoListView()
}

struct EditTodoView: View {
    @State var todo: Todo
    @ObservedObject var viewModel: TodoViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Edit task", text: $todo.title)
            Toggle("Completed", isOn: $todo.isCompleted)
            Button("Save") {
                viewModel.updateTodo(todo: todo)
                presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Edit Task")
    }
}
