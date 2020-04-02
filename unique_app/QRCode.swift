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
    
           
                    
                 
                
        Button(action: {}
        
//action of the button
        ) {
                        
        Image("QR")
        .resizable()
        .renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 35, height: 35)
                     }
                    
                }
        


struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
        QRCode()
    }
}

}

