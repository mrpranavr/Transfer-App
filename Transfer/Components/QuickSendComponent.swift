//
//  QuickSendComponent.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import SwiftUI

struct QuickSendComponent: View {
    @State private var startAnimation = false
    
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
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    // Add new user button
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.white)
                            .frame(width: 88, height: 88)
                            .background(Color.white.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    })
                    
                    ForEach(User.mockUsers) { user in
                        Button(action: {}, label: {
                            if user.Image != "" {
                                Image(user.Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 88, height: 88)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                            } else {
                                Text(String(user.name.first ?? "X").capitalized)
                                    .font(.sectionTitle)
                                    .foregroundStyle(.white)
                                    .frame(width: 88, height: 88)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                        })
                    }
                }
            }
        }
        .modifier(DropDownAnimation(startAnimation: startAnimation))
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {                          startAnimation = true
            })
        }
    }
}

#Preview {
    QuickSendComponent()
}
