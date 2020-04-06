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
        
    
        
      
       
            VStack {
                ZStack {
                    Image("logo")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 92, height: 35)
                        .padding(.bottom, 20)
                    
                    
                    HStack {
                        
                      MenuIcon()
                      Spacer()
                      QRCode()
                     
                    }.padding(.horizontal)
                }.padding(.top, 40.0)
                
               
                    
                    NameId()
                
        
                ZStack(alignment: .bottom) {
                    
                    Files()
                   
                    
                    BottomControls()
                       
                }
                    .padding(.top, 36.0)
                .edgesIgnoringSafeArea(.bottom)
               
            }.background(Color.backgroundColor)
                .edgesIgnoringSafeArea(.top)
        }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
