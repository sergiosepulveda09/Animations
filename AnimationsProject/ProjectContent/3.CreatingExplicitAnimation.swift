//
//  CreatingExplicitAnimation.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct CreatingExplicitAnimation: View {
    
    @State private var animationAmount: Double = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}

struct CreatingExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CreatingExplicitAnimation()
    }
}
