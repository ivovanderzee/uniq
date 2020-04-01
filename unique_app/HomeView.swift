//
//  ContentView.swift
//  unique_app
//
//  Created by Ivo van der Zee on 01/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

extension Color {
  static let colorList = Color("listColor")
  static let backgroundColor = Color("backgroundColor")
}

struct HomeView: View {
 
    
    var body: some View {
        
    
       ZStack(alignment: .bottom) {
        Color.backgroundColor
      .edgesIgnoringSafeArea(.all)
        
       
            VStack{
                
        Image("logo")
        .resizable()
        .renderingMode(.original)
        .aspectRatio(contentMode: .fit)
        .frame(width: 92, height: 35)
                .edgesIgnoringSafeArea(.bottom)
                Spacer()
                
                
          
        
                ZStack(alignment: .bottom) {
                    
                    Rectangle()
                        
                        .fill(Color.colorList)
                        .frame(height: 550)
                    .cornerRadius(15)
                }
        
                        
            
            }.edgesIgnoringSafeArea(.bottom)
        
            
           

        }
        
         
            
        
            
    
            
        
                
            
       
            
            
        
     
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
