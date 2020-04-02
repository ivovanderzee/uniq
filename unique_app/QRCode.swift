//
//  QRCode.swift
//  unique_app
//
//  Created by Xandor Naus on 02/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct QRCode: View {
 
    
    var body: some View {
    
            VStack{
            
                HStack {
                    
                     Spacer()
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                    Image("QR")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 45, height: 45)
                        .edgesIgnoringSafeArea(.bottom)
                        
                     }
                    
                } .padding()
                
                Spacer()
    
                }

        }


struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
        QRCode()
    }
}

}

