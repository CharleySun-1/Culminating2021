//
//  MainView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            ChartView()
                .tabItem {
                    Label("Chart", Image: "chart")
                }
        
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}