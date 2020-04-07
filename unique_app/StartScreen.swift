//
//  StartScreen.swift
//  unique_app
//
//  Created by Xandor Naus on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        
      
        ZStack {
            
           
            
            VStack(alignment: .center, spacing: -5) {
                
                
                LogoOnStartScreen().padding(.top, 230)
                Text("Veilig gegeven versturen")
                
                 Spacer()
                
                Text("Tip: beveilig je accounts altijd met een two way verification").frame(width: 240).padding(.bottom, 30.0)
                SubmitButton()
            }.background(Color.backgroundColor).edgesIgnoringSafeArea(.all)
        
                Particles()
        }
        
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }


}

