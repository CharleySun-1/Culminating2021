//
//  Culminating_projectApp.swift
//  Culminating project
//
//  Created by Charley Sun on 2021-03-17.
//

import SwiftUI

@main
struct Culminating2021App: App {
    
    @StateObject private var store = ItemStore(items: testData)
    
    
    var body: some Scene {
        WindowGroup {

            TabView {
                
                NavigationView {
                    HomeView(store: store)
                }
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }

                ChartView()
                .tabItem {
                    Label("Chart", systemImage: "chart.pie")
                }

                PersonView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                
            }
        }
    }
}
