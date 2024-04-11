//
//  NumberKeys.swift
//  Transfer
//
//  Created by Pranav R on 11/04/24.
//

import Foundation

struct NumberKeys : Identifiable {
    let id: UUID
    var label: String
    var value: Int
    
    init(id: UUID = UUID(), label: String, value: Int) {
        self.id = id
        self.label = label
        self.value = value
    }
}

extension NumberKeys {
    static let numberkeys : [NumberKeys] = [
        NumberKeys(label: "1", value: 1),
        NumberKeys(label: "2", value: 2),
        NumberKeys(label: "3", value: 3),
        NumberKeys(label: "4", value: 4),
        NumberKeys(label: "5", value: 5),
        NumberKeys(label: "6", value: 6),
        NumberKeys(label: "7", value: 7),
        NumberKeys(label: "8", value: 8),
        NumberKeys(label: "9", value: 9),
        NumberKeys(label: ".", value: 0),
        NumberKeys(label: "0", value: 0),
    ]
}
