//
//  Todo.swift
//  wwdc
//  MVVM
//  Created by alex weldu on 9/16/2025.
//

import SwiftUI

public struct Todo: Identifiable {
    public var id: UUID = UUID()
    public var title: String
    public var isCompleted: Bool = false
    
    init(id: UUID, title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
