//
//  ContentView.swift
//  Loader
//
//  Created by JD Patel on 10/02/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = true
    
    var body: some View {
        
        LoadingView(isShowing: $isLoading) {
            
            NavigationView {
                
                List(["1", "2", "3", "4", "5"], id: \.self) { row in
                    Text(row)
                }.listStyle(GroupedListStyle())
                
                .navigationBarTitle(Text("Loader"), displayMode: .large)
            }
            
        }
        
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                withAnimation(.easeInOut(duration: 0.3)) {

                    //Stop loading after getting response from API
                    self.isLoading.toggle()
                    
                }
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
