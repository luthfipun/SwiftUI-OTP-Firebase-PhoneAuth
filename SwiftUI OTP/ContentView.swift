//
//  ContentView.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 06/03/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @AppStorage("isLoggedIn") var isLogin: Bool = false
    
    var body: some View {
        if isLogin {
            Home()
        }else {
            Login()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
