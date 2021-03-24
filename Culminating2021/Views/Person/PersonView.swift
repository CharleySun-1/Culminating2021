//
//  PersonView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

struct PersonView: View {
    
    @State private var person = false

    var body: some View {
        
        Text("Person")
    }
    
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
           PersonView()
        }
    }
}
