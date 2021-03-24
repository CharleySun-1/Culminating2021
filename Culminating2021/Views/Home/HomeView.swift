import SwiftUI

struct HomeView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: ItemStore
    
    // Controls whether the add task is showing
    @State private var showingAddItem = false
    
    
    var body: some View {
        
        List {
            ForEach(store.items) { item in
                
                NavigationLink(
                    destination: EditView(item: item)) {
                        ItemCell(item: item)

                    }
                
            }
            .onDelete(perform: deleteItems)
            
        }
        .sheet(isPresented: $showingAddItem) {
            AddView(store: store, showing: $showingAddItem)
        }
        .navigationTitle("Expenses")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddItem = true
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        store.items.remove(atOffsets: offsets)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView(store: testStore)
        }
    }
}
