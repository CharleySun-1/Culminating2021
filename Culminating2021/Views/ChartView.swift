//
//  ChartView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

struct ChartView: View {
    
    @State private var chart = false

    var body: some View {
        
        Text("Chart")
    }
    
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
           ChartView()
        }
    }
}
