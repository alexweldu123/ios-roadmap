//
//  TodoViewModelTests_swift.swift
//  TodoViewModelTests.swift
//
//  Created by alex weldu on 9/15/2025.
//

import Testing
import XCTest
@testable import mvvmtuts

final class  TodoViewModelTests : XCTestCase{

    var viewModel: TodoViewModel!
    
    override func setUp() {
            super.setUp()
            viewModel = TodoViewModel()
        }
    
    override func tearDown() {
          viewModel = nil
          super.tearDown()
      }
    
    
    func testAddTodo() {
            // When
            viewModel.addTodo(title: "Buy milk")
            
            // Then
            XCTAssertEqual(viewModel.todos.count, 1)
            XCTAssertEqual(viewModel.todos.first?.title, "Buy milk")
            XCTAssertFalse(viewModel.todos.first!.isCompleted)
        }
    
    func testAddTodo_EmptyTitle_ShouldNotAdd() {
            // When
            viewModel.addTodo(title: "") // only spaces
            
            // Then
            XCTAssertTrue(viewModel.todos.isEmpty)
        }
        
        func testToggleTodoCompletion() {
            // Given
            viewModel.addTodo(title: "Walk the dog")
            let todo = viewModel.todos.first!
            
            // When
            viewModel.toggleTodoCompletion(todo)
            
            // Then
            XCTAssertTrue(viewModel.todos.first!.isCompleted)
            
            // Toggle back
            viewModel.toggleTodoCompletion(todo)
            XCTAssertFalse(viewModel.todos.first!.isCompleted)
        }
        
        func testDeleteTodo() {
            // Given
            viewModel.addTodo(title: "Task 1")
            viewModel.addTodo(title: "Task 2")
            
            // When
            viewModel.deleteTodo(at: IndexSet(integer: 0))
            
            // Then
            XCTAssertEqual(viewModel.todos.count, 1)
            XCTAssertEqual(viewModel.todos.first?.title, "Task 2")
        }
        
        func testUpdateTodo() {
            // Given
            viewModel.addTodo(title: "Old title")
            var todo = viewModel.todos.first!
            
            // When
            todo.title = "Updated title"
            viewModel.updateTodo(todo: todo)
            
            // Then
            XCTAssertEqual(viewModel.todos.first?.title, "Updated title")
        }

}

