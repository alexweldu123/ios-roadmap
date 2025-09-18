//
//  Todo.swift
//  Bytepulse
//
//  Created by alex weldu on 9/15/2025.
//
import SwiftUI

struct Todo: Identifiable{
    var id: UUID = UUID()
    var title: String
    var isCompleted: Bool = false
    
}
