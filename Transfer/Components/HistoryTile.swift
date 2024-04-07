//
//  HistoryTile.swift
//  Transfer
//
//  Created by Pranav R on 07/04/24.
//

import SwiftUI

struct HistoryTile: View {
    var history: PaymentHistory
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack(spacing: 14) {
                Image(history.user.Image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading, spacing: 9) {
                    Text(history.user.name)
                        .font(.historyName)
                        .foregroundStyle(.white)
                    
                    Text(dateFormatter.string(from: history.paymentDate))
                        .font(.smallest)
                        .foregroundStyle(.white.opacity(0.5))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("+ $ \(String(history.amount))")
                .font(.sectionTitle)
                .foregroundStyle(.white)
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.white.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    HistoryTile(history: PaymentHistory.mockHistories[0])
}
