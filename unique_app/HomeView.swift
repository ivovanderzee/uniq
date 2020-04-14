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
    
    @State var status = false
    
    var body: some View {
        
    
   
        NavigationView{
        ZStack {
               
             Color.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                   
                    VStack {
                        ZStack {
                            Image("logo")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 92, height: 35)
                              
                            
                            
                            HStack {
                                
                              MenuIcon()
                              Spacer()
                              QRCode()
                             
                            }.padding(.horizontal)
                        }
                        
                        NameId().padding(.top, 15.0)
                        
                    }
                    
                    
                    
                ZStack(alignment: .bottom) {
                    
                 
                 
                        Files()
                    
                  Rectangle()
                                                   .fill(LinearGradient(gradient: .init(colors: [Color.bottomGradient1,Color.bottomGradient2]), startPoint: .bottom, endPoint: .top))
                    .frame(width: UIScreen.main.bounds.width, height: 250)
                      
                    BottomControls().padding(.bottom, 40.0)
                    
                    
                           
                    }.padding(.top, 10.0).edgesIgnoringSafeArea(.bottom)
                   
                    
                    
            }
            
           
        }.padding(.top, -100)
            }.navigationBarTitle(Text(""), displayMode: .inline).navigationBarHidden(true)
        
        
            
        }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
