//
//  CustomizingAnimation.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct CustomizingAnimation: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
            
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
        
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
             
        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}

struct CustomizingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingAnimation()
    }
}
