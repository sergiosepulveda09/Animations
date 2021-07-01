//
//  ContentView.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AnimatingBinding()
        CustomizingAnimation()
        CreatingExplicitAnimation()
        ControllingAnimationStack()
        VStack{
            AnimatingGestures()
            AnimatingGestures2()
        }
        Showing_HidingViewsWithTranslations()
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
