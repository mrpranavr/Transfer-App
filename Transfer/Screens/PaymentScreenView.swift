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
    @State var viewState = CGSize(width: 0, height: 50)
    
    var selectedUser : User
    
    var body: some View {
        
        ZStack {
            Color(.cBlack)
                .ignoresSafeArea()
            
            ScrollView {
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
                        
                        // Swipe Action
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                            //                            .offset(x: viewState.width)
                                .frame(width: .infinity, height: 100)
                                .foregroundStyle(Color.white.opacity(0.1))
                            
                            
                            HStack{
                                
                                // This part is the actual swiping arrow
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(LinearGradient(colors: [
                                            Color(.cGreen),
                                            Color(.cDarkGreen)
                                        ], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: 90, height: 90)
                                        .offset(x: viewState.width + 5)
                                        .gesture(
                                            DragGesture().onChanged { value in
                                                print(value.translation.width)
                                                if(value.translation.width < 250 && value.translation.width > 0) {
                                                    viewState = value.translation
                                                }
                                            }
                                                .onEnded { value in
                                                    withAnimation(.spring()) {
                                                        viewState = .zero
                                                    }
                                                }
                                        )
                                    
                                    HStack(spacing: -1) {
                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.white)
                                            .offset(x: viewState.width + 5)
                                            .gesture(
                                                DragGesture().onChanged { value in
                                                    viewState = value.translation
                                                }
                                                    .onEnded { value in
                                                        withAnimation(.spring()) {
                                                            viewState = .zero
                                                        }
                                                    }
                                            )
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.white.opacity(0.7))
                                            .offset(x: viewState.width + 5)
                                            .gesture(
                                                DragGesture().onChanged { value in
                                                    viewState = value.translation
                                                }
                                                    .onEnded { value in
                                                        withAnimation(.spring()) {
                                                            viewState = .zero
                                                        }
                                                    }
                                            )
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.white.opacity(0.5))
                                            .offset(x: viewState.width + 5)
                                            .gesture(
                                                DragGesture().onChanged { value in
                                                    viewState = value.translation
                                                }
                                                    .onEnded { value in
                                                        withAnimation(.spring()) {
                                                            viewState = .zero
                                                        }
                                                    }
                                            )
                                    }
                                    
                                }
                                
                                
                                
                                Spacer()
                            }
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
//                .padding(.top, 14)
            }
        }
    }
}

#Preview {
    PaymentScreenView(selectedUser: User.mockUsers[0])
}
