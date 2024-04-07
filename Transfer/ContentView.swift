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
