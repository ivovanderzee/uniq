//
//  FileItem.swift
//  unique_app
//
//  Created by Ivo van der Zee on 06/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

extension Color {
  static let listItem = Color("listItem")
  static let listBG = Color("listBG")
    
}


struct Files: View {
    

    var body: some View {
        
        ScrollView{
            
          
            
        
            VStack(alignment: .leading, spacing: 20.0) {
            
            
               
            NavigationLink(destination: SendItemStepOne().navigationBarHidden(true).navigationBarBackButtonHidden(true)){

                
            HStack(alignment: .center, spacing: 35.0) {
                Image("ID")
                .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 38)
                 
                Text("Identiteitsbewijs")
                
                Spacer()
    
                Button(action: {
                                    print("Button action")
                                    }) {
                                        Image(systemName: "chevron.right")
                }.foregroundColor(Color(UIColor.label))
            }.padding()
                .frame(height: 88)
                .background(Color.listItem)
                .cornerRadius(10)
              .shadow(radius: 5)
            .padding(.horizontal, 12.0)
                                
            }.foregroundColor(Color(UIColor.label))
                
                
                
                NavigationLink(destination: SendItemStepOne().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
            
            
            HStack(alignment: .center, spacing: 35.0) {
                           Image("CV")
                           .resizable()
                               .renderingMode(.original)
                               .aspectRatio(contentMode: .fit)
                               .frame(height: 38)
                            
                           Text("CV")
                           
                           Spacer()
               
                           Button(action: {
                                               print("Button action")
                                               }) {
                                                   Image(systemName: "chevron.right")
                           }.foregroundColor(Color(UIColor.label))
                       }.padding()
                .frame(height: 88)
            .background(Color.listItem)
            .cornerRadius(10)
                .shadow(radius: 5)
            .padding(.horizontal, 12.0)
                
                }.foregroundColor(Color(UIColor.label))
                    
                    
                    
                    
        NavigationLink(destination: SendItemStepOne().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
        
                                  HStack(alignment: .center, spacing: 35.0) {
                                           Image("RB")
                                           .resizable()
                                               .renderingMode(.original)
                                               .aspectRatio(contentMode: .fit)
                                               .frame(height: 38)
                                            
                                           Text("Rijbewijs")
                                           
                                           Spacer()
                               
                                           Button(action: {
                                                               print("Button action")
                                                               }) {
                                                                   Image(systemName: "chevron.right")
                                           }.foregroundColor(Color(UIColor.label))
                                       }.padding()
                                    .frame(height: 88)
            .background(Color.listItem)
            .cornerRadius(10)
              .shadow(radius: 5)
            .padding(.horizontal, 12.0)
                               
        }.foregroundColor(Color(UIColor.label))
                
                
                    NavigationLink(destination: SendItemStepOne().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
            
                HStack(alignment: .center, spacing: 35.0) {
                                          Image("PP")
                                          .resizable()
                                              .renderingMode(.original)
                                              .aspectRatio(contentMode: .fit)
                                              .frame(height: 38)
                                           
                                          Text("Paspoort")
                                          
                                          Spacer()
                              
                                          Button(action: {
                                                              print("Button action")
                                                              }) {
                                                                  Image(systemName: "chevron.right")
                                          }.foregroundColor(Color(UIColor.label))
                                      }.padding()
                    .frame(height: 88)
                .background(Color.listItem)
                .cornerRadius(10)
              .shadow(radius: 5)
            .padding(.horizontal, 12.0)

                        
                        }.foregroundColor(Color(UIColor.label))
            
                
                   NavigationLink(destination: SendItemStepOne().navigationBarHidden(true).navigationBarBackButtonHidden(true)){
                
            HStack(alignment: .center, spacing: 35.0) {
                                                  Image("BP")
                                                  .resizable()
                                                      .renderingMode(.original)
                                                      .aspectRatio(contentMode: .fit)
                                                      .frame(height: 38)
                                                   
                                                  Text("Bankpas")
                                                  
                                                  Spacer()
                                      
                                                  Button(action: {
                                                                      print("Button action")
                                                                      }) {
                                                                          Image(systemName: "chevron.right")
                                                  }.foregroundColor(Color(UIColor.label))
                                              }.padding()
                .frame(height: 88)
            
            .background(Color.listItem)
            .cornerRadius(10)
            .shadow(radius: 5)
                .padding(.horizontal, 12.0)
                
                                              
                      
                    }.foregroundColor(Color(UIColor.label))

            }.frame(width: UIScreen.main.bounds.width)
                .padding(.top, 20.0)
                
                
            
        }.background(Color.listBG)
        .cornerRadius(20)
            
    }
}

struct FileItem_Previews: PreviewProvider {
    static var previews: some View {
        Files()
        
        
    }
}
