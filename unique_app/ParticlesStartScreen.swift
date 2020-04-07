//
//  ParticlesStartScreen.swift
//  unique_app
//
//  Created by Xandor Naus on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct ParticlesStartScreen: View {
    var body: some View {
                 
        ZStack{
                   Image("Particles")
                       .resizable()
                       .renderingMode(.original)
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 170, height: 70
                   )
            
        }
        }
    }

struct ParticlesStartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
