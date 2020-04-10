//
//  SendItemStepOne.swift
//  unique_app
//
//  Created by Ivo van der Zee on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendItemStepOne: View {
    
    
    var body: some View {
        
      
        NavigationView{
        ZStack {
            
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
            
                
                VStack{
                    
                    Image("logo").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 92, height: 35)
                    
                    HStack {
                        SendItemName()
                        Spacer()
                        ZStack{
                            
                            ProgressCircle(percentage: CGFloat(0))
                            Text("1/3").font(.system(size: 23)).fontWeight(.light).foregroundColor(Color(UIColor.label))
                        }
                    }.padding(.horizontal, 35.0)
                    
                }
                
                Spacer()
                
                ZStack(alignment: .top){
                    
                    ZStack(alignment: .top) {
                              Rectangle().fill(Color.listBG).cornerRadius(20).frame(height: 600)
                              
                              VStack(spacing: 20) {
                                  UserInputField(placeholder: "Typ hier je naam").padding(.leading, 35.0)
                                NavigationButtons(nextView: AnyView(SendItemStepTwo()), previousView: AnyView(HomeView()))
                              }.padding(.top, 100.0)
                              
                          }
      
                    Text("Naam ontvanger?").foregroundColor(Color(UIColor.label)).font(.largeTitle).fontWeight(.bold).padding(.top, 30.0)
                
                }
            }.edgesIgnoringSafeArea(.bottom)
        }.padding(.top, -100)
            
        }.navigationBarTitle(Text(""), displayMode: .inline).navigationBarHidden(true)
                
        
        
    }
}

struct SendItemStepOne_Previews: PreviewProvider {
    static var previews: some View {
        SendItemStepOne()
    }
}
