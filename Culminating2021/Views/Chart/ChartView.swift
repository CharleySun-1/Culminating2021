//
//  ChartView.swift
//  Culminating2021
//
//  Created by Charley Sun on 2021-03-22.
//

import SwiftUI

struct ChartView: View {
    
    var body: some View {
        
        Home()
    }
    
}



struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
      
           ChartView()
        }
}


struct Home : View {
    @State var selected = 0
    var colors = [Color("Color1"),Color("Color")]
 var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                
                HStack{
                    Text("Graph")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                   //Bar Chart...
                
                    HStack{
                        
                        Text("Statistics")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 0)
                    }
                    .padding()
                    
                    // stats Grid...
                    
                    LazyVGrid(columns: columns,spacing: 30){
                        ForEach(ItemCategory){stat in
                            
                            VStack(spacing: 32){
                                
                                HStack{
                                    
                                    Text(stat.title)
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    Spacer(minLength: 0)
                                }
                                
                                // Ring...
                                
                                ZStack{
                                    
                                    Circle()
                                        .trim(from: 0, to: 1)
                                        .stroke(stat.color.opacity(0.05), lineWidth: 10)
                                        .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                    
                                    Circle()
                                        .trim(from: 0, to: (stat.currentData / stat.goal))
                                        .stroke(stat.color, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                                        .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                    Text(getPercent(current: stat.currentData, Goal: stat.goal) + " %")
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                        .foregroundColor(stat.color)
                                        .rotationEffect(.init(degrees: 90))
                                }
                                .rotationEffect(.init(degrees: -90))
                                
                                Text(getDec(val: stat.currentData) + " " + getType(val: stat.title))
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                            .padding()
                            .background(Color.white.opacity(0.06))
                            .cornerRadius(15)
                            .shadow(color: Color.white.opacity(0.2), radius: 10, x: 0, y: 0)
                        }
                    }
                    .padding()
                }
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .preferredColorScheme(.dark)
            // status bar color is not changing
            // its still in beta...
        }
        
        
        // converting Number to decimal...
        
        func getDec(val: CGFloat)->String{
            
            let format = NumberFormatter()
            format.numberStyle = .decimal
            
            return format.string(from: NSNumber.init(value:Float(val)))!
        }
        
        // calculating percent...
        
        func getPercent(current : CGFloat,Goal : CGFloat)->String{
            
            let per = (current / Goal) * 100
            
            return String(format: "%.1f", per)
        }
        
    
    
    struct RoundedShape : Shape {
        
        func path(in rect: CGRect) -> Path {
            
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 5, height: 5))
            
            return Path(path.cgPath)
        }
    }
    
    
}
