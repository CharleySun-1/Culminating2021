//
//  ContentView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-21.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
       
        VStack{
            
            Spacer()
            
            CustomTabs(index: self.$index)
        }
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabs : View {
    
    @Binding var index : Int
    
    var body : some View {
        
        HStack{
            
            Button(action: {
                
                self.index = 0
                
            }) {
                
                Image("home")
            }
            
            .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            .offset(x: -20)
            
            Spacer(minLength: 0)
            Button(action: {
                
                self.index = 1
                
            }) {
                
                Image("chart")
            }
            .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
            .offset(x: -20)
            Spacer(minLength: 0)
            
            Button(action: {
                
            }) {
                
                Image("add").renderingMode(.original)
            }
            
            .offset(x: 3)
           
            Spacer(minLength: 0)
            
            Button(action: {
                
                self.index = 3
                
            }) {
                
                Image("person")
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            .offset(x: 20)
            
            Spacer(minLength: 0)
            Button(action: {
                
                self.index = 0
                
            }) {
                
                Image("information")
            }
            .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
            .offset(x: 20)
            
        }
        
        
        .padding(.horizontal, 35)
        .background(Color.white)
    }
}
