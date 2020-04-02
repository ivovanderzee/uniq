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

}

struct BottomControls: View {
    var body: some View {
       
        
        

            
        
        HStack(alignment: .center) {
                
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
                        .padding(.top, -9.0)
                }
                
            Spacer()
         
             
            HStack(alignment: .center) {
                Button(action: {
                            
                            //button action
                            
                        }) {
                            Text("+")
                                .padding(22.0)
                                .foregroundColor(.white)
                                .font(.system(size: 35, weight: .heavy))
                            
                        }
                            .background(Color.buttonColor)
                            .clipShape(Circle())
                .shadow(radius: 5)
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
                    .padding(.top, -9.0)
                    .opacity(0.0)
                }
                
            }.padding()
            
          

        
        
        
    }
}

struct BottomControls_Previews: PreviewProvider {
    static var previews: some View {
        BottomControls()
    }
}
