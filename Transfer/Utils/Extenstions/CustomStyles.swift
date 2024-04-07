//
//  CustomStyles.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import Foundation
import SwiftUI

struct MainActionButtonStyle : ButtonStyle {
    var hPadding : CGFloat
    var colorConfig: ButtonColorConfig
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, hPadding)
            .padding(.vertical, 40)
            .foregroundStyle(colorConfig == ButtonColorConfig.dark ? .white : .cBlack)
            .background(colorConfig == ButtonColorConfig.dark ? Color.cBlack : Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 35))
    }
}


struct DropDownAnimation : ViewModifier {
    var startAnimation: Bool
    
    func body(content: Content) -> some View {
        content
            .opacity(startAnimation ? 1.0 : 0.0)
            .offset(CGSize(width: 0, height: startAnimation ? 0 : -50))
            .animation(.smooth(duration: 0.5), value: startAnimation)
    }
}

enum ButtonColorConfig {
    case dark, light
}
