//
//  MenuIcon.swift
//  unique_app
//
//  Created by Xandor Naus on 02/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct MenuIcon: View {
 
    
    var body: some View {
    
            VStack{
            
                HStack {
                    
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                    Image("Group")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 45, height: 45)
                        .edgesIgnoringSafeArea(.bottom)
                        
                     }
                    
                    Spacer()
                    
                } .padding()
                
                Spacer()
    
                }

        }


struct MenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        MenuIcon()
    }

}

}


