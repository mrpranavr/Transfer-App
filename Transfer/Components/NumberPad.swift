//
//  NumberPad.swift
//  Transfer
//
//  Created by Pranav R on 11/04/24.
//

import SwiftUI

struct NumberPad: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], content: {
            
            ForEach(NumberKeys.numberkeys, content: { numKey in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(numKey.label)
                        .font(.numbers)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 20)
                });
            })
            
        })
    }
}

#Preview {
    NumberPad()
}
