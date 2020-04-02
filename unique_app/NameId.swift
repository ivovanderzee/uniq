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
            
            Text("Goedeavond, John!")
                .font(.largeTitle)
                .fontWeight(.regular)
                .foregroundColor(.black)
            
        ZStack {
            
            Image("UNIQUE_ID")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 45, height: 45)
                        .edgesIgnoringSafeArea(.bottom)
            
            Text("8ucv4tx3kp0")
                .font(.callout)
                .fontWeight(.semibold)
                .padding(.all, 24.0)
                .foregroundColor(.white)
        }
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
            
            Spacer()
        
    }
}

struct NameId_Previews: PreviewProvider {
static var previews: some View {
    NameId()
    }
}
}


