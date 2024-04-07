//
//  TestFont.swift
//  Transfer
//
//  Created by Pranav R on 06/04/24.
//

import Foundation
import SwiftUI


for family: String in UIFont.familyNames {
    print(family)
    for names: String in UIFont.fontNames(forFamilyName: family) {
        print("==\(names)")
    }
}
