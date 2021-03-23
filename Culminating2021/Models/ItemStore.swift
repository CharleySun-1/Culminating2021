//
//  ItemStore.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-23.
//

import Foundation

class ItemStore: ObservableObject {
    @Published var items: [Item]
    
    init(items: [Item] = []) {
        self.items = items
    }
}

let itemStore = ItemStore(tasks: itemData)
