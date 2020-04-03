//
//  SubmitButton.swift
//  unique_app
//
//  Created by Xandor Naus on 03/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SubmitButton: View {
      var body: some View {
            
          Button(action: {
            
              }) {
        
             ZStack {
                       
                       Image("CONFIRM_BTN")
                       .resizable()
                       .renderingMode(.original)
                       .aspectRatio(contentMode: .fill)
                        .padding()
                        .frame(width: 445, height: 100)
                

                Text("Bevestigen")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .trailing])
                    .foregroundColor(.white)
                    
                   }
                   .opacity(0.8)
                   .cornerRadius(10.0)
                   .padding(-15)
    
        }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton()
    }
}
}
