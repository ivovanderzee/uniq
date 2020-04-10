//
//  SendInteractionElement.swift
//  unique_app
//
//  Created by Ivo van der Zee on 10/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendInteractionElement: View {
    var body: some View {
        
        ZStack(alignment: .top) {
            Rectangle().fill(Color.listBG).cornerRadius(20).frame(height: 600)
            
            VStack(spacing: 20) {
                UserInputField().padding(.leading, 35.0)
                NavigationButtons()
            }.padding(.top, 100.0)
            
        }
        
    }
}

struct SendInteractionElement_Previews: PreviewProvider {
    static var previews: some View {
        SendInteractionElement()
    }
}
