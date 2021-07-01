//
//  Showing&HidingViewsWithTranslations.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct Showing_HidingViewsWithTranslations: View {
    
    @State private var isShowingRed: Bool = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct Showing_HidingViewsWithTranslations_Previews: PreviewProvider {
    static var previews: some View {
        Showing_HidingViewsWithTranslations()
    }
}
