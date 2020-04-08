//
//  LoaderStartScreen.swift
//  unique_app
//
//  Created by Xandor Naus on 08/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import SwiftUI


struct LoaderStartScreen: View {
    @State private var fillPoint = 0.0
    
    private var animation: Animation {
        
        // Animation.basic(duration: 0.8).repeatForever(autoreverses: false)
        
  Animation.linear(duration: 0.8)
    .repeatForever(autoreverses: true)
        
        
    }

    var body: some View {
        Ring(fillPoint: fillPoint).stroke(Color.colorGreen, lineWidth: 7)
            .frame(width: 60, height: 60)
            .onAppear() {
            withAnimation {
                self.fillPoint =    1.0
        }
        
        }
    
        }
}
struct Ring: Shape {
    var fillPoint: Double
    
    var animatableData: Double {
        get { return fillPoint }
        set {fillPoint = newValue}
    }
    
    func path(in rect: CGRect) -> Path {
        var start:Double = 0
        let end = 360 * fillPoint
        
        var path = Path()
        
        var point = CGPoint(x: rect.size.width/2, y: rect.size.height/2)
        
        path.addArc(center:(point),
                    
            radius: rect.size.width/2,
            startAngle: .degrees(start),
            endAngle: .degrees(end),
            clockwise: false)
        
        return path
    }

}

struct LoaderStartScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoaderStartScreen()
    }
}
    

