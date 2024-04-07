//
//  MoneyViewComponent.swift
//  Transfer
//
//  Created by Pranav R on 06/04/24.
//

import SwiftUI

struct MoneyViewComponent: View {
    @State private var startAnimation = false
    
    
    var body: some View {
        ZStack {
            Color(.cGreen)
                .ignoresSafeArea()
            
            // MARK: Inside Content
            VStack(spacing: 50) {
                // Header Section
                HStack {
                    
                    Image(systemName: "line.3.horizontal")
                    VStack(alignment: .leading) {
                        Text("good morning")
                            .kerning(1)
                            .opacity(0.5)
                            .font(.captionTitle)
                        
                        Text("Icarus")
                            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .font(.captionTitle)
                    }
                    .padding(.leading, 22)
                    
                    Spacer()
                    
                    // Bell Icon
                    Image(systemName: "bell.fill")
                }
                .foregroundStyle(.white)
                
                // Balance Section + buttons
                VStack(alignment: .center, spacing: 20) {
                    // Balance Section
                    HStack {
                        VStack(alignment: .leading) {
                            Text("your total balance")
                                .font(.captionTitle)
                                .foregroundStyle(.white.opacity(0.5))
                            
                            Text("$ 12,739.85")
                                .font(.h1Bold)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                    }
                    
                    // Buttons
                    GeometryReader { geo in
                        HStack(alignment: .center) {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("request")
                                    .font(.captionTitle)
                                    .kerning(1)
                            })
                            .buttonStyle(MainActionButtonStyle(hPadding: geo.size.width < 356 ? 52 : 52, colorConfig: ButtonColorConfig.dark))
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("send")
                                    .font(.captionTitle)
                                    .kerning(1)
                            })
                            .buttonStyle(MainActionButtonStyle(hPadding: geo.size.width < 356 ? 60 : 62, colorConfig: ButtonColorConfig.light))
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(height: 100)
                    
                }
                .frame(maxWidth: .infinity)
                
                
            }
            .padding(.horizontal, 20)
            .padding(.top, 60)
            .padding(.bottom, 20)
        }
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .opacity(startAnimation ? 1.0 : 0.0)
        .scaleEffect(CGSize(width: startAnimation ? 1 : 0, height: startAnimation ? 1 : 0), anchor: UnitPoint(x: 0.5, y: 1))
        .offset(CGSize(width: 0, height: startAnimation ? 0 : 50))
        .animation(.smooth(duration: 0.5), value: startAnimation)
        .onAppear() {
            startAnimation = true
        }
    }
}


struct MoneyViewComponent__previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.cGreen)
                .ignoresSafeArea()
            MoneyViewComponent()
        }
    }
}
