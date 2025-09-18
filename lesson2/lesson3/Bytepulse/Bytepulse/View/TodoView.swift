//
//  TodoView.swift
//  Bytepulse
//
//  Created by alex weldu on 9/15/2025.
//

import SwiftUI

struct TodoView: View {
    @State var text: String = ""
    @StateObject var todoStore = TodoViewModel()
    
    var body: some View {
       NavigationStack {
             VStack {
               Form {
                     Section {
                         HStack {
                             TextField("Enter new task", text: $text)
                                 .textFieldStyle(.roundedBorder).padding()
                             Button(action: {
                                 todoStore.addTodo(Todo(title: text))
                                 text = ""
                             }) {
                                 Text("Add Todo")
                             }.buttonStyle(.bordered)
                         }
                         
                     }
                 }
                 
                 List {
                     ForEach(todoStore.todos, id: \.id) { todo in
                         Text(todo.title)
                     }
                 }
                 
             }.navigationTitle(Text("Todos")).navigationBarTitleDisplayMode(.inline)
       }.ignoresSafeArea(.all)
    }
}

#Preview {
    TodoView()
}
