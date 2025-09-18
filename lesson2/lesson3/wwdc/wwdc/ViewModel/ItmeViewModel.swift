//
//  ItmeViewModel.swift
//  wwdc
//
//  Created by alex weldu on 9/17/2025.
//
import Combine

import SwiftUI
@MainActor
final class ItemViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    func addItem(_ item:Item) {
        
        items.append(item)
        
    }
    
    func deleteItem(_ index: Int) {
        items.remove(at: index)
    }
    
    func updateItem(_ item: Item, at index: Int) {
        items[index] = item
    }
    
}
