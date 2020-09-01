//
//  LoadingView.swift
//  Loader
//
//  Created by JD Patel on 10/02/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct LoadingView<Content>: View where Content: View {
    
    @Binding var isShowing: Bool
    var content: () -> Content
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            self.content()
                .disabled(self.isShowing)
                .blur(radius: self.isShowing ? 10 : 0)
            
            VStack {
                ActivityIndicator(isAnimating: $isShowing, style: .large)
            }
            .frame(width: 90, height: 90)
            .background(Color.secondary.colorInvert())
            .foregroundColor(Color.primary)
            .cornerRadius(20)
            .opacity(self.isShowing ? 1 : 0)
            
        }
        
    }
    
}

