//
//  NameId.swift
//  unique_app
//
//  Created by Xandor Naus on 02/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct NameId: View {
    var body: some View {
        
         VStack{
            
            HStack {
                Text("Goedemorgen,")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color(UIColor.label))
                
                Text("Ivo")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color(UIColor.label))
                
                
                
                
            }
            
            ZStack {
            
                Rectangle().fill(LinearGradient(gradient: .init(colors: [Color.colorGreen,Color.colorBlue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 140, height: 45)
                    .cornerRadius(22)
                
           
            
            
            
            Text("8ucv4tx3kp0")
                .font(.callout)
                .fontWeight(.semibold)
                .padding(.all, 24.0)
                .foregroundColor(.white)
        }
        .opacity(0.8)
        .cornerRadius(10.0)
            .padding(.top, -15)
            
        
    }
}

struct NameId_Previews: PreviewProvider {
static var previews: some View {
    NameId()
    }
}
}


