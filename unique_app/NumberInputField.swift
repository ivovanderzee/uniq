//
//  NumberInputField.swift
//  unique_app
//
//  Created by Xandor Naus on 09/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct NumberInputField: View {
    
    @State private var name: String = ""
    
    var body: some View {
    
        
        HStack {
            TextField("Voer het unique ID in", text: $name).font(.title)
                
                
                .keyboardType(.default)
        }
        
    }
}

struct NumberInputField_Previews: PreviewProvider {
    static var previews: some View {
        NumberInputField()
    }
}
