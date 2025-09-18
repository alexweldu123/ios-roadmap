//
//  Todo.swift
//  mvvmtuts
//
//  Created by alex weldu on 9/15/2025.
//


import SwiftUI

// --- Model ---
struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
 
