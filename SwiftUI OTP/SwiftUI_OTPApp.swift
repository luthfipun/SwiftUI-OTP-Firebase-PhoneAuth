//
//  SwiftUI_OTPApp.swift
//  SwiftUI OTP
//
//  Created by Luthfi Abdul Azis on 06/03/21.
//

import SwiftUI
import Firebase

@main
struct SwiftUI_OTPApp: App {
    
    @UIApplicationDelegateAdaptor(AppDeletegate.self) var delegate
    
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

class AppDeletegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
}
