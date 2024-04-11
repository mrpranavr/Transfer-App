//
//  PaymentScreenView.swift
//  Transfer
//
//  Created by Pranav R on 09/04/24.
//

import SwiftUI

struct PaymentScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var enteredNumber = "0"
    
    var selectedUser : User
    
    var body: some View {
        
        ZStack {
            Color(.cBlack)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 24) {
                // Header buttons
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                    })
                    Spacer()
                }
                
                // User details
                VStack(spacing: 40) {
                    HStack() {
                        HStack(spacing: 24) {
                            if selectedUser.Image != "" {
                                Image(selectedUser.Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 88, height: 88)
                                    .clipShape(RoundedRectangle(cornerRadius: 18))
                            } else {
                                Text(String(selectedUser.name.first ?? "X").capitalized)
                                    .font(.sectionTitle)
                                    .foregroundStyle(.white)
                                    .frame(width: 78, height: 78)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(selectedUser.name)
                                    .font(.sectionTitle)
                                    .foregroundStyle(.white)
                                
                                Text("**** 5769")
                                    .font(.captionTitle)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.white.opacity(0.5))
                        })
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.white).opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    // Entered Value
                    HStack(alignment: .center) {
                        
                        TextField("", text: $enteredNumber)
                            .font(.h1Bold)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(alignment: .center)
                    
                    // Number Pad
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], content: {
                        
                        ForEach(NumberKeys.numberkeys, content: { numKey in
                            Button(action: {
                                if(enteredNumber == "0") {
                                    enteredNumber = ""
                                }
                                enteredNumber += numKey.label
                            }, label: {
                                Text(numKey.label)
                                    .font(.numbers)
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 40)
                                    .padding(.vertical, 20)
                            });
                        })
                        
                        Button(action: {
                            if(enteredNumber == "0" || enteredNumber == "") {
                                enteredNumber = "0"
                            } else {
                                enteredNumber = String(enteredNumber.dropLast())
                                if(enteredNumber == "") {
                                    enteredNumber = "0"
                                }
                            }
                        }, label: {
                            Image(systemName: "delete.backward.fill")
                                .foregroundStyle(.white)
                                .padding(.horizontal, 40)
                                .padding(.vertical, 20)
                        });
                    })
                    
                    
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
        }
        
        //        Button(action: {
        //            self.presentationMode.wrappedValue.dismiss()
        //        }, label: {
        //            Text(selectedUser.name)
        //        })
    }
}

#Preview {
    PaymentScreenView(selectedUser: User.mockUsers[0])
}
