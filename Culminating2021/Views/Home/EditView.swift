//
//  EditView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

//
//  AddTask.swift
//  Culminating project
//
//  Created by Charley Sun on 2021-03-19.
//

import SwiftUI

struct EditView: View {
    
    // Get a reference to the store of tasks (TaskStore)
    @ObservedObject var item: Item
    
    // Whether to show this view
    //    @Binding var showing: Bool
    
    var body: some View {
        
        VStack {
            Form {
                TextField("Description", text: $item.description)
                
                Picker("Category", selection: $item.category) {
                    Text(ItemCategory.business.rawValue).tag(ItemCategory.business)
                    Text(ItemCategory.personal.rawValue).tag(ItemCategory.personal)
                    Text(ItemCategory.online.rawValue).tag(ItemCategory.online)
                    Text(ItemCategory.food.rawValue).tag(ItemCategory.food)
                    Text(ItemCategory.travel.rawValue).tag(ItemCategory.travel)
                    
                    
                    
                    
                }
                TextField("Cost", text: $item.cost)
                
                
            }
        }
        .navigationTitle("Edit expense")
        //            .toolbar {
        //                ToolbarItem(placement: .primaryAction) {
        //                    Button("Save") {
        //                        saveItem()
        //                    }
        //                }
        //            }
        
    }
    
    //    func saveItem() {
    //
    //
    //
    //        // Dismiss this view
    //        showing = false
    //
    //    }
    //
    //
    //    func cancelItem() {
    //        // Dismiss this view
    //        showing = false
    //
    //    }
}



struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(item: testData[0])
    }
}
