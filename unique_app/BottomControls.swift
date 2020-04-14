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
            
            
    
            
            Button(action: {
                                
            //button action
                                    
            }) {
                                    
                                    
                ZStack {
                    
                    
                    Rectangle()  .fill(LinearGradient(gradient: .init(colors: [Color.colorGreen,Color.colorBlue]), startPoint: .leading, endPoint: .trailing))
                                                           .frame(width: 65, height: 65)
                        .cornerRadius(100)
                    
                   
                    
                    
                    Image(systemName: "plus").foregroundColor(.white).frame(width: 30, height: 30).font(.title)
                    
                    
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
                            .frame(width: 40, height: 5)
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
                                   .frame(width: 40, height: 5)
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
