//
//  UserInputField.swift
//  unique_app
//
//  Created by Ivo van der Zee on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct UserInputField: View {
    
    @State private var name: String = ""
    
    var body: some View {
    
        
        HStack {
            TextField("Typ hier", text: $name).font(.title)
                
                
                .keyboardType(.default)
        }
        
    }
}

struct UserInputField_Previews: PreviewProvider {
    static var previews: some View {
        UserInputField()
    }
}
