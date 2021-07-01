//
//  AnimatingGestures.swift
//  AnimationsProject
//
//  Created by Sergio Sepulveda on 2021-06-30.
//

import SwiftUI

struct AnimatingGestures: View {
    
    @State private var dragAmount: CGSize = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        
                        withAnimation(.spring()) {
                            self.dragAmount = .zero
                        }
                        
                    }
            )
//            .animation(.spring())

    }
}

struct AnimatingGestures2: View {
    let letters = Array("Hello Swift")
    @State private var IsEnabled: Bool = false
    @State private var dragAmount: CGSize = CGSize.zero
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(self.letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(self.IsEnabled ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num) / 20))
            }
        }
        .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded { _ in
                    self.dragAmount = .zero
                    self.IsEnabled.toggle()
                }
        )
    }
}

struct AnimatingGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures()
        AnimatingGestures2()
    }
}
