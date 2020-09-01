//
//  ContentView.swift
//  Loaders
//
//  Created by JD on 01/09/20.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        VStack {
            HStack {
                ThemeCircle(animationAmount: animationAmount, delay: 0)
                ThemeCircle(animationAmount: animationAmount, delay: 0.2)
                ThemeCircle(animationAmount: animationAmount, delay: 0.4)
            }
        }
        
        .onAppear {
            self.animationAmount = 0.3
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
