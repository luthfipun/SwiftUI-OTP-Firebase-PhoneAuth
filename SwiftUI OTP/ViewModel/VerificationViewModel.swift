//
//  VerificationViewModel.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 07/03/21.
//

import Foundation

class VerificationViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    @Published var isFocus: Bool = false
    @Published var pin: String = ""
}
