//
//  ParticlesStartScreen.swift
//  unique_app
//
//  Created by Xandor Naus on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct Particles: View {
    var body: some View {
                 
   
                   
        Image("PARTICLES")
            
            .renderingMode(.original)
            .resizable()
            .opacity(0.5)
            .aspectRatio(contentMode: .fit)
            
       
                       
                   
            
        
        }
    }

struct Particles_Previews: PreviewProvider {
    static var previews: some View {
        Particles()
    }
}
