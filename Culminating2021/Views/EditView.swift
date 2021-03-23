//
//  EditView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

struct EditView: View {
    @ObservedObject var expenses: Expenses
    @Binding private var name = ""
    @Binding private var type = "Personal"
    @Binding private var amount = ""
    @Environment(\.presentationMode) var presentationMode

    static let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                Picker("Type", selection: $type) {
                    ForEach(Self.types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Edit your expense")
            .navigationBarItems(trailing: Button("Save") {
                if let actualAmount = Int(self.amount) {
                    let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                }
            }
            )
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(expenses: Expenses())
    }
}
