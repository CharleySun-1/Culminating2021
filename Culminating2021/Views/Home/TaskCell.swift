//
//  TaskCell.swift
//  Culminating project
//
//  Created by Charley Sun on 2021-03-18.
//

import SwiftUI

struct ItemCell: View {
    
    @ObservedObject var item: Item
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.description)
                    .font(.headline)
                Text(item.category.rawValue)
            }
            
            Spacer()
            Text("$\(item.cost)")
        }
                }
            }

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell(item: testData[0])
        ItemCell(item: testData[1])
    }
}
