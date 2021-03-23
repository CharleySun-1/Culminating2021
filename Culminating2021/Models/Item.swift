//
//  Item.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-23.
//

import Foundation

class Item: Identifiable, ObservableObject {
   
    var id = UUID()
    var description: String
    var category: ItemCategory
    var cost: Double
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, category: ItemCategory, cost: Double, completed: Bool) {
        self.id = id
        self.description = description
        self.category = category
        self.cost = cost
        self.completed = completed
    }
    
}

let itemData = [
    Item(description: "Grow long hair", category: ItemCategory.food, cost: 100, completed: true),
  
]
