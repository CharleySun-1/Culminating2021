import SwiftUI

struct HomeView: View {
    
    // Stores all tasks that are veing tracked
    @ObservedObject var store: ItemStore
    
    // Controls whether the add task is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List(store.tasks) { task in
           TaskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddView(store: store, showing: $showingAddTask)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
