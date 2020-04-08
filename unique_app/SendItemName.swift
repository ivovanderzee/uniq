//
//  SendItemName.swift
//  unique_app
//
//  Created by Ivo van der Zee on 08/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendItemName: View {
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text("Versturen").foregroundColor(Color.colorGreen).font(.largeTitle).fontWeight(.bold)
            
            Text("Identiteitsbewijs").foregroundColor(Color(UIColor.label)).font(.title).fontWeight(.light)
        }
        
        
        
    }
}

struct SendItemName_Previews: PreviewProvider {
    static var previews: some View {
        SendItemName()
    }
}
