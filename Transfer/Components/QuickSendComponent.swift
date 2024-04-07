//
//  QuickSendComponent.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import SwiftUI

struct QuickSendComponent: View {
    var body: some View {
        VStack {
            HStack {
                Text("quick send")
                    .font(.sectionTitle)
                    .foregroundStyle(.white)
                    .kerning(1.1)
                
                Spacer()
                
                Text("view all")
                    .font(.captionTitle)
                    .foregroundStyle(.white.opacity(0.5))
            }
            
            
        }
    }
}

#Preview {
    QuickSendComponent()
}
