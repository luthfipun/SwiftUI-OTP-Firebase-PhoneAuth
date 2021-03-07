//
//  Verification.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 07/03/21.
//

import SwiftUI
import SwiftUIX

struct Verification: View {
    
    @ObservedObject var viewModel: ViewModel
    
    @State var countPin = 6
    @State var currentFocus = 0
    
    @State var pin1 = ""
    @State var pin2 = ""
    @State var pin3 = ""
    @State var pin4 = ""
    @State var pin5 = ""
    @State var pin6 = ""
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            Image("img2")
                .padding()
            
            Text("Verification")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Enter the OTP send to \(Text(viewModel.phoneNumber).fontWeight(.bold).foregroundColor(.black))")
                .font(.callout)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack {
                
                CocoaTextField("-", text: $pin1)
                    .isFirstResponder(currentFocus == 0)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin1, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 0
                    }
                
                CocoaTextField("-", text: $pin2)
                    .isFirstResponder(currentFocus == 1)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin2, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 1
                    }
                
                CocoaTextField("-", text: $pin3)
                    .isFirstResponder(currentFocus == 2)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin3, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 2
                    }
                
                CocoaTextField("-", text: $pin4)
                    .isFirstResponder(currentFocus == 3)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin4, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 3
                    }
                
                CocoaTextField("-", text: $pin5)
                    .isFirstResponder(currentFocus == 4)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin5, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 4
                    }
                
                CocoaTextField("-", text: $pin6)
                    .isFirstResponder(currentFocus == 5)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray.opacity(0.1), lineWidth: 2, antialiased: true)
                    )
                    .keyboardType(.numberPad)
                    .onChange(of: pin6, perform: { value in
                        if value.count > 0 {
                            currentFocus += 1
                        }
                    })
                    .onTapGesture {
                        currentFocus = 5
                    }
                
            }.padding()
            
            HStack {
                Text("Don't receive the OTP Code?")
                    .font(.callout)
                    .foregroundColor(.gray)
                
                Button(action: {}, label: {
                    Text("Resend OTP")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                })
            }
            
            Button(action: {
                
                let code = pin1+pin2+pin3+pin4+pin5+pin6
                viewModel.verifyCode(code: code)
                
            }, label: {
                Text("Verify")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.3, maxHeight: 50)
                    .background(Color("Primary"))
                    .cornerRadius(6)
                    .shadow(color: Color("Primary").opacity(0.8), radius: 6, x: 1, y: 1)
                    .opacity(viewModel.isLoadingVerify ? 0.2 : 1)
                    .overlay(
                        viewModel.isLoadingVerify ? ProgressView() : nil
                    )
            })
            .padding()
            .disabled(viewModel.isLoadingVerify)
        }
        .frame(maxWidth: UIScreen.main.bounds.width / 1.2)
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 25)
        )
        .shadow(color: Color.black.opacity(0.2), radius: 25, x: 1, y: 1)
    }
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
