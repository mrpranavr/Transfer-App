//
//  SplashScreenView.swift
//  Transfer
//
//  Created by Pranav R on 06/04/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.customBlack
                    .ignoresSafeArea()
                
                Text("Transfer")
                    .rotationEffect(Angle(degrees: 270))
                    .font(Font.custom("Poppins-Bold", size: 120))
                    .scaledToFill()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    withAnimation(.easeInOut) {
                        isActive = true
                    }
                })
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
