//
//  Numpad.swift
//  unique_app
//
//  Created by Xandor Naus on 03/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI

struct Numpad: View {
    
    @State var status = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                if status{
                    
                    Home()
                }
                else{
                    
                    Verification()
                }
                
            }.onAppear {
                
                NotificationCenter.default.addObserver(forName: NSNotification.Name("Success"), object: nil, queue: .main) { (_) in
                    
                    self.status = true
                }
            }
        }
        
    }
}

struct Home : View {

    var body : some View{
        
        Text("Home")
    }
}

struct Verification : View {
    
    @State var code : [String] = []
    
    var body : some View{
        
        VStack{
            
       HStack(spacing: 20){
                          
                          ForEach(code,id: \.self){i in
                              
                              Text(i).font(.title).fontWeight(.light)
                          }.foregroundColor(Color(UIColor.label))
                          
                  }.padding(.vertical)
                      
                      NumberPad(codes: $code).padding(.top, 75.0)
            
        }
    }
}

struct Numpad_Previews: PreviewProvider {
    static var previews: some View {
        Numpad()
    }
}

struct NumberPad : View {
    
    @Binding var codes : [String]
    
    var body : some View{
        
        VStack(alignment: .leading,spacing: 20){
            
            ForEach(datas){i in
                
                HStack(spacing: self.getspacing()){
                    
                    ForEach(i.row){j in
                        
                        Button(action: {
                            
                            if j.value == "delete.left.fill"{
                             
                                self.codes.removeLast()
                            }
                            else{
                                
                                self.codes.append(j.value)
                                
                                if self.codes.count == 4{
                                    
                                    print(self.getCode())
                                    
                                    NotificationCenter.default.post(name: NSNotification.Name("Success"), object: nil)
                                    
                                    self.codes.removeAll()
                                }
                            }
                            
                        }) {
                            
                            if j.value == "delete.left.fill"{
                                
                                Image(systemName: j.value).font(.body).padding(.vertical)
                            }
                            else{
                                
                                Text(j.value).font(.largeTitle).fontWeight(.light).padding(.vertical)
                            }
                            
                            
                        }
                    }
                }
                
            }
            
        }.foregroundColor(Color(UIColor.label))
    }
    
    func getspacing()->CGFloat{
        
        return UIScreen.main.bounds.width / 4.5
    }
    
    func getCode()->String{
        
        var code = ""
        
        for i in self.codes{
        
            code += i
            
        }
        
        return code.replacingOccurrences(of: " ", with: "")
    }
}


// datas...

struct type : Identifiable {
    
    var id : Int
    var row : [row]
}

struct row : Identifiable {
    
    var id : Int
    var value : String
}

var datas = [

type(id: 0, row: [row(id: 0, value: " 1"),row(id: 1, value: "2"),row(id: 2, value: "3")]),
type(id: 1, row: [row(id: 0, value: "4"),row(id: 1, value: "5"),row(id: 2, value: "6")]),
type(id: 2, row: [row(id: 0, value: "7"),row(id: 1, value: "8"),row(id: 2, value: "9")]),
type(id: 3, row: [row(id: 0, value: "0"),row(id: 1, value: "0"), row(id: 2, value: "delete.left.fill")])
]

