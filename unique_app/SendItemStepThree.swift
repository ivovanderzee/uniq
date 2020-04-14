//
//  SendItemStepOne.swift
//  unique_app
//
//  Created by Xandor Naus on 07/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct SendItemStepThree: View {
    
       @State var code : [String] = []
    
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
                            
                            ProgressCircle(percentage: CGFloat(66))
                            Text("3/3").font(.system(size: 23)).fontWeight(.light).foregroundColor(Color(UIColor.label))
                        }
                    }.padding(.horizontal, 35.0)
                    
                }
                
                Spacer()
                
                ZStack(alignment: .top){
                    
                    ZStack(alignment: .top) {
                              Rectangle().fill(Color.listBG).cornerRadius(20).frame(height: 600)
                              
                           
                              
                          }
      
                    
                    
                    VStack(spacing: 30.0) {
                        Text("Bevestig met code").foregroundColor(Color(UIColor.label)).font(.largeTitle).fontWeight(.bold).padding(.top, 30.0)
                        
                        HStack{
                                                             
                                                   
                                                   ForEach(code,id: \.self){i in
                                                                 
                                                                 Text(i).font(.title).fontWeight(.light)
                                                             }.foregroundColor(Color(UIColor.label))
                                                             
                                               }.frame(height: 20)
                        
                        NumberPad(codes: $code).padding(.bottom, 40.0)
                        
                       
                                               
                    }
                    NavigationLink(destination: HomeView()){
                    
                    SubmitButton()
                                      
                    }.padding(.top, 520.0)
                }
            }.edgesIgnoringSafeArea(.bottom)
        }.padding(.top, -100)
            
        }.navigationBarTitle(Text(""), displayMode: .inline).navigationBarHidden(true)
                
        
        
    }
}

struct SendItemStepThree_Previews: PreviewProvider {
    static var previews: some View {
        SendItemStepThree()
    }
}

