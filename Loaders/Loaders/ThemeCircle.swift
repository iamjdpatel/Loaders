//
//  ThemeCircle.swift
//  Loaders
//
//  Created by JD on 01/09/20.
//

import SwiftUI

struct ThemeCircle: View {
    var animationAmount: CGFloat
    var delay: Double
    var body: some View {
        Color.pink
            .frame(width: 20, height: 20)
            .cornerRadius(10)
            .scaleEffect(animationAmount)
            .animation(
                Animation.easeOut(duration: 0.6)
                    .repeatForever(autoreverses: true)
                    .delay(delay)
            )
    }
}
