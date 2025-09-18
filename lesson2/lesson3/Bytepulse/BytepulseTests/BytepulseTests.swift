//
//  BytepulseTests.swift
//  BytepulseTests
//
//  Created by alex weldu on 9/15/2025.
//

import XCTest
@testable import Bytepulse

final class BytepulseTests: XCTestCase {
    var viewModel: TodoViewModel!
    
    override   func setUp() {
        super.setUp()
        viewModel = TodoViewModel()
    }

    override   func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func addTodo() throws {
        viewModel.addTodo(Todo(title: "Test"))
        XCTAssertEqual(viewModel.todos.count, 1)
        XCTAssertEqual(viewModel.todos[0].title, "Test")
    }

     

}
