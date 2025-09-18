//
//  TodoItem.swift
//  SwiftDataTodoList
//
//  Created by alex weldu on 9/18/2025.
//

import SwiftData
import SwiftUI
@Model
class TodoItem {
    var id: UUID
    var title: String
    var isCompleted: Bool
    var createdAt: Date

    init(title: String, isCompleted: Bool = false) {
        self.id = UUID()
        self.title = title
        self.isCompleted = isCompleted
        self.createdAt = Date()
    }
}
