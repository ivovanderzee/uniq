//
//  SubmitButton.swift
//  unique_app
//
//  Created by Xandor Naus on 03/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

extension Color{
    
   static let colorGreen = Color("colorGreen")
    static let colorBlue = Color("colorBlue")
    

}



struct SubmitButton: View {
    

    
      var body: some View {
            
     
      
        
   
                
            
                ZStack {
                    
                    
                    
                    
                Rectangle()
                              .fill(LinearGradient(gradient: .init(colors: [Color.colorGreen,Color.colorBlue]), startPoint: .leading, endPoint: .trailing))
                                         .frame(width: UIScreen.main.bounds.width, height: 90)
                    .cornerRadius(10)
                                  
                    
                

                Text("Beginnen")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.leading, .trailing, .bottom])
                    .foregroundColor(Color.white)
                
                
                    }.opacity(0.7)
                    .shadow(radius: 10)
            
                    
             
                
                   
    
        }
            
     
        
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton()
    }
}

