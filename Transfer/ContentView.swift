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
                    
                    VStack(spacing: 44) {
                        // MARK: Quick Send Section
                        QuickSendComponent()
                        
                        // MARK: History Section
                        HistoryComponent()
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
