//
//  BottomControls.swift
//  unique_app
//
//  Created by Ivo van der Zee on 01/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

extension Color{
    
   static let buttonColor = Color("button")
    static let bottomGradient1 = Color("bottomGradient1")
    static let bottomGradient2 = Color("bottomGradient2")
    

}

struct BottomControls: View {
    var body: some View {
        
        
       
    
        
        
        ZStack {
            
            
            Rectangle()
                .fill(LinearGradient(gradient: .init(colors: [Color.bottomGradient1,Color.bottomGradient2]), startPoint: .bottom, endPoint: .top))
                .frame(width: UIScreen.main.bounds.width, height: 140)
               
            
            
            Button(action: {
                                
            //button action
                                    
            }) {
                                    
                                    
                ZStack {
                    
                    Image("add_button")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65, height: 65)
                    
                    
                    Text("+")
                    .foregroundColor(.white)
                        .font(.system(size: 35, weight: .heavy))
                        .multilineTextAlignment(.center)
                    
                    
                }
            
                
            
                
            }
                    
            
            
            HStack {
                
              VStack(alignment: .leading) {
                            Button(action: {
                                print("Button action")
                                }) {
                                Text("Gegevens")
            
                            }.font(.system(size: 20, weight: .heavy))
                                .foregroundColor(Color(UIColor.label))
            
                            Rectangle()
                                                     
                            .fill(Color.buttonColor)
                            .cornerRadius(15)
                            .frame(width: 80, height: 5)
                            .padding(.top, -10.0)
                }
                
                
                Spacer()
                
                VStack (alignment: .leading) {
                                   Button(action: {
                                                  print("Button action")
                                              }) {
                                                  Text("Historie")
                                   }.font(.system(size: 20, weight: .heavy))
                                       .foregroundColor(Color(UIColor.label))
                                   
                                   
                                   Rectangle()
                                                                               
                                   .fill(Color.buttonColor)
                                   .cornerRadius(15)
                                   .frame(width: 80, height: 5)
                                   .padding(.top, -10.0)
                                    
                               }
            }.padding(.horizontal)
        }

        
        
        
    }
}

struct BottomControls_Previews: PreviewProvider {
    static var previews: some View {
        BottomControls()
    }
}
