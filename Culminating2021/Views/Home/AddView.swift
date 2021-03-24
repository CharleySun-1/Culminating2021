//
//  AddTask.swift
//  Culminating project
//
//  Created by Charley Sun on 2021-03-19.
//

import SwiftUI

struct AddView: View {
    
    // Get a reference to the store of tasks (TaskStore)
    @ObservedObject var store: ItemStore
    
    // Details of the new task
    @State private var description = ""
    @State private var category = ItemCategory.business
    @State private var cost = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Description", text: $description)
                    
                    Picker("Category", selection: $category) {
                        Text(ItemCategory.business.rawValue).tag(ItemCategory.business)
                        Text(ItemCategory.personal.rawValue).tag(ItemCategory.personal)
                        Text(ItemCategory.online.rawValue).tag(ItemCategory.online)
                        Text(ItemCategory.food.rawValue).tag(ItemCategory.food)
                        Text(ItemCategory.travel.rawValue).tag(ItemCategory.travel)
                        
                    
                    }
                    TextField("Cost", text: $cost)
                    
                    
                }
            }
            .navigationTitle("New expense")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveItem()
                    }
                }
            }
        }
    }
    
    func saveItem() {
        
        //Add the task to the list of tasks
        store.items.append(Item(description: description,
                                category: category,
                                cost: cost,
                                completed: false))
        
        // Dismiss this view
        showing = false
    
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(store:testStore, showing: .constant(true))
    }
}
