//
//  ContentView.swift
//  Transfer
//
//  Created by Pranav R on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var startAnimation : Bool = false
    
    var body: some View {
        ZStack(content: {
            Color.customBlack
                .ignoresSafeArea()
            
//            VStack(spacing: 44) {
//                // MARK: Money Section
//                MoneyViewComponent()
//                
//                // MARK: Quick Send Section
//                VStack {
//                    QuickSendComponent()
//                }
//                .padding(.horizontal, 14)
//                
//                Spacer()
//            }
//            .padding(10)
//            .ignoresSafeArea()
//            .opacity(startAnimation ? 1.0 : 0.0)
//            .offset(CGSize(width: 0, height: startAnimation ? 0 : 10))
//            .animation(.easeInOut(duration: 1), value: startAnimation)
//            .onAppear() {
//                startAnimation = true
//            }
            
            ScrollView(content: {
                VStack(spacing: 44) {
                    // MARK: Money Section
                    MoneyViewComponent()
                    
                    // MARK: Quick Send Section
                    VStack {
                        QuickSendComponent()
                    }
                    .padding(.horizontal, 14)
                }
            })
            .padding(10)
            .ignoresSafeArea()
        })
    }
}

#Preview {
    ContentView()
}
