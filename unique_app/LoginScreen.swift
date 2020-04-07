//
//  LoginScreen.swift
//  unique_app
//
//  Created by Ivo van der Zee on 03/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
       
        VStack {
            
            LogoOnStartScreen()
            
            Numpad()
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
