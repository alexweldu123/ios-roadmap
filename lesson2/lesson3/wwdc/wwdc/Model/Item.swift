//
//  Item.swift
//  wwdc
//
//  Created by alex weldu on 9/17/2025.
//

struct Item: Identifiable {
   public var id: String
   public var text: String
    
    
    init(id: String, text: String) {
        self.id = id
        self.text = text
    }
}
