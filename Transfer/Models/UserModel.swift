//
//  UserModel.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import Foundation
import SwiftUI

/*
 User Model contains the structure and mock data for all users of the app
 
 Params required :-
    - Image URL
    - Name
    - Account Number (encoded somehow)
 */


struct User : Identifiable {
    let id: UUID
    var name: String
    var Image: String
    
    init(id: UUID = UUID(), name: String, Image: String) {
        self.id = id
        self.name = name
        self.Image = Image
    }
}

extension User {
    static let mockUsers : [User] = [
        User(name: "Albin", Image: "testImage1"),
        User(name: "Dharan", Image: "testImage1"),
        User(name: "Akil", Image: "testImage1"),
        User(name: "Fahad", Image: "testImage1"),
        User(name: "Johny", Image: "testImage1"),
        User(name: "OC", Image: "testImage1"),
    ]
}
