//
//  NavigationButtons.swift
//  unique_app
//
//  Created by Ivo van der Zee on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct NavigationButtons: View {
    var body: some View {
        

        HStack(spacing: 80) {
            
            ZStack {
                          Rectangle()
                              .fill(LinearGradient(gradient: .init(colors: [Color.colorGreen,Color.colorBlue]), startPoint: .leading, endPoint: .trailing))
                              .frame(width: 110, height: 45)
                              .cornerRadius(40)
                          
                          
                          Text("Vorige").foregroundColor(Color.white)
            }.opacity(0.8)
            
            
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: .init(colors: [Color.colorGreen,Color.colorBlue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 110, height: 45)
                    .cornerRadius(40)
                
                
                Text("Volgende").foregroundColor(Color.white)
            }
        }
    }
}

struct NavigationButtons_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtons()
    }
}
