//
//  SendItemStepOne.swift
//  unique_app
//
//  Created by Ivo van der Zee on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendItemStepOne: View {
    
    
    var body: some View {
        
      

        ZStack {
            
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
            
                
                VStack{
                    
                    Image("logo").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 92, height: 35)
                    
                    HStack {
                        SendItemName()
                        Spacer()
                    }.padding(.horizontal, 35.0)
                    
                }
                
                Spacer()
                
                ZStack(alignment: .top){
                    
                    SendInteractionElement()
      
                    Text("Naam ontvanger?").foregroundColor(Color(UIColor.label)).font(.largeTitle).fontWeight(.bold).padding(.top, 30.0)
                
                }
            }.edgesIgnoringSafeArea(.bottom)
        }
            
        
                
        
        
    }
}

struct SendItemStepOne_Previews: PreviewProvider {
    static var previews: some View {
        SendItemStepOne()
    }
}
