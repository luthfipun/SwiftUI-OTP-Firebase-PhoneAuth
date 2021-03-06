//
//  Done.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 07/03/21.
//

import SwiftUI

struct Done: View {
    var body: some View {
        VStack {
            Image("img3")
            
            Text("Congrats! You are verified")
                .font(.title2)
                .fontWeight(.bold)
            
            Button(action: {
                exit(-1)
            }, label: {
                Text("Done")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.3, maxHeight: 50)
                    .background(Color("Primary"))
                    .cornerRadius(6)
                    .shadow(color: Color("Primary").opacity(0.8), radius: 6, x: 1, y: 1)
            }).padding()
        }.frame(maxWidth: UIScreen.main.bounds.width / 1.2)
        .padding()
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 25)
        )
        .shadow(color: Color.black.opacity(0.2), radius: 25, x: 1, y: 1)
    }
}

struct Done_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
