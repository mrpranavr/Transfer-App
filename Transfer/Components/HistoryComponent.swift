//
//  HistoryComponent.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import SwiftUI

struct HistoryComponent: View {
    @State private var startAnimation = false
    
    var body: some View {
        VStack {
            HStack {
                Text("history")
                    .font(.sectionTitle)
                    .foregroundStyle(.white)
                    .kerning(1.1)
                
                Spacer()
                
                Text("view all")
                    .font(.captionTitle)
                    .foregroundStyle(.white.opacity(0.5))
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                ForEach(PaymentHistory.mockHistories) { history in
                    HistoryTile(history: history)
                }
            })
        }
        .modifier(DropDownAnimation(startAnimation: startAnimation))
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {                          startAnimation = true
            })
        }
    }
}

#Preview {
    HistoryComponent()
}
