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
        
      
   
        NavigationView{
        ZStack {
        
               Color.backgroundColor.edgesIgnoringSafeArea(.all)
               Particles().opacity(0.5)
          
            VStack(alignment: .center, spacing: -5) {
                
                
                LogoOnStartScreen().padding(.top, 230)
                Text("Veilig gegeven versturen")
                
                
                   Spacer()
            
                         LoaderStartScreen()
                .padding(.bottom, 130.0)
                
        
                 Spacer()
                
                Text("Tip: beveilig je accounts altijd met een two way verification").frame(width: 240).padding(.bottom, 30.0)
                
                
                
                
                SubmitButton()
                    
                }
                
            }.edgesIgnoringSafeArea(.bottom)
        
        
           
               
        }.navigationBarTitle(Text(""), displayMode: .inline).navigationBarHidden(true)
        }
    
      
    
    
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }


}

