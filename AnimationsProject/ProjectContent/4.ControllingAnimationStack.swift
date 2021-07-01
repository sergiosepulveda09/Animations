//
//  ControllingAnimationStack.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct ControllingAnimationStack: View {
    
    @State private var isEnabled: Bool = false
    
    var body: some View {
        //Modifiers order matter, including animation modifiers
        Button("Tap Me") {
            self.isEnabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(isEnabled ? Color.blue : Color.green)
        .animation(.easeIn(duration: 3))
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: isEnabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}

struct ControllingAnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationStack()
    }
}
