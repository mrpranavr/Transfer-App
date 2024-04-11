//
//  CustomFonts.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import SwiftUI

extension Font {
    static var h1Bold: Font {
        Font.custom("Poppins-Bold", size: 50)
    }
    
    static var sectionTitle: Font {
        Font.custom("Poppins-Medium", size: 20)
    }
    
    static var captionTitle: Font {
        Font.custom("Poppins-Medium", size: 13)
    }
    
    static var headerBold: Font {
        Font.custom("Poppins-Bold", size: 120)
    }
    
    static var historyName: Font {
        Font.custom("Poppins-Medium", size: 12)
    }
    
    static var smallest: Font {
        Font.custom("Poppins-Medium", size: 8)
    }
    
    static var numbers: Font {
        Font.custom("Poppins-Medium", size: 25)
    }
}
