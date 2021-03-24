//
//  Item.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-23.
//

import Foundation

class Item: Identifiable, ObservableObject {
   
    var id = UUID()
    @Published var description: String
    @Published var category: ItemCategory
    @Published var cost: String
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, category: ItemCategory, cost: String, completed: Bool) {
        self.id = id
        self.description = description
        self.category = category
        self.cost = cost
        self.completed = completed
    }
    
}

let testData = [
    Item(description: "Ice cream", category: ItemCategory.food, cost: "5", completed: true),
  
]
