//
//  Home.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 07/03/21.
//

import SwiftUI

struct Home: View {
    
    @AppStorage("isLoggedIn") var isLogin: Bool = false
    
    var body: some View {
        VStack {
            Text("You are Logged In")
                .padding()
            
            Button(action: {
                
                isLogin = false
                
            }, label: {
                Text("Logout")
            })
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
