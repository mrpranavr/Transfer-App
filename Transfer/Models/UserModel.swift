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
        User(name: "Albin", Image: "ProfileMock"),
        User(name: "Dharan", Image: "ProfileMock"),
        User(name: "Akil", Image: "ProfileMock"),
        User(name: "Fahad", Image: "ProfileMock"),
        User(name: "Johny", Image: ""),
        User(name: "OC", Image: ""),
    ]
}
