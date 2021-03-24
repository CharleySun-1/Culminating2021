import SwiftUI

struct HomeView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: ItemStore
    
    // Controls whether the add task is showing
    @State private var showingAddTask = false
    
    var body: some View {
        NavigationView {
                List(store.items) { item in
                    ItemCell(item: item)
                }.toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button("Add") {
                            showingAddTask = true
                        }
                    }
                }.sheet(isPresented: $showingAddTask) {
                    AddView(store: store, showing: $showingAddTask)
                }.navigationTitle("Expenses")
                
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView(store: testStore)
        }
    }
}
