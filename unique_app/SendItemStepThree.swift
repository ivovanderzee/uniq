//
//  SendItemStepThree.swift
//  unique_app
//
//  Created by Xandor Naus on 09/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendItemStepThree: View {
    
    
    var body: some View {
        
      
                
        VStack {
          
            HStack {
                SendItemName()
                Spacer()
            }.padding(.horizontal, 35.0).padding(.bottom, 30).padding(.top, 102.0)
         
            
            ZStack(alignment: .top) {
                
            
               
                Rectangle().fill(Color.listBG)
                    .frame(width: UIScreen.main.bounds.width, height: 605)
                    .cornerRadius(20)
                  
                
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("Bevestig met code").foregroundColor(Color(UIColor.label)).font(.largeTitle).fontWeight(.bold).padding(.bottom, 30.0)
                    
                }.padding(.leading, 35.0).padding(.top, 55.0)
                
                
                
            }
            
          
            
        }.edgesIgnoringSafeArea(.all)
                
        
        
    }
}

struct SendItemStepThree_Previews: PreviewProvider {
    static var previews: some View {
        SendItemStepThree()
    }
}
