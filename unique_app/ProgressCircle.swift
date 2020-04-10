//
//  ProgressCircle.swift
//  unique_app
//
//  Created by Ivo van der Zee on 10/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

extension Color {
     static let cirlceColor = Color("circleColor")
   }

struct ProgressCircle: View {
    
   
    
    var body: some View {
       
        ZStack{
            
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                
                ZStack{
                    
                    Outline(percentage: CGFloat(99))
                    
                }
                
            }
            
        }
        
    }
}


struct Outline: View{
    var percentage: CGFloat = 0
    var color: Color = Color.colorGreen
    
    var body: some View{
        ZStack{
            Circle()
                     
                .fill(Color.clear)
                .frame(width: 80, height: 80)
            
            .overlay(Circle()
                .trim(from: 0, to: percentage * 0.01)
                .stroke(style: StrokeStyle(lineWidth: 11, lineCap: .round, lineJoin: .round))
                .fill(Color.colorGreen).rotationEffect(.init(degrees: 275.0))
                .overlay(Circle().fill(Color.cirlceColor).frame(height: 75).shadow(radius: 5))
            
            ).animation(.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0))
            
        }
    }
    
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
