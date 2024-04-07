//
//  PaymentHistoryModel.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import Foundation
import SwiftUI

/*
 Data Model for the payment history being created.
 
 Params required :-
    - Id
    - User
    - Payment Date
    - Payment Amount
 */

struct PaymentHistory : Identifiable {
    let id: UUID
    var user: User
    var paymentDate: Date
    var amount: Double
    var description: String
    
    init(id: UUID = UUID(), user: User, paymentDate: Date, amount: Double, description: String) {
        self.id = id
        self.user = user
        self.paymentDate = paymentDate
        self.amount = amount
        self.description = description
    }
}

extension PaymentHistory {
    static let mockHistories: [PaymentHistory] = [
        PaymentHistory(user: User(name: "Icarus", Image: "ProfileMock"), paymentDate: Date(), amount: 100.00, description: "test desc"),
        PaymentHistory(user: User(name: "Icarus", Image: "ProfileMock"), paymentDate: Date(), amount: 100.00, description: "test desc"),
        PaymentHistory(user: User(name: "Icarus", Image: "ProfileMock"), paymentDate: Date(), amount: 100.00, description: "test desc"),
        PaymentHistory(user: User(name: "Icarus", Image: "ProfileMock"), paymentDate: Date(), amount: 100.00, description: "test desc"),
    ]
}
