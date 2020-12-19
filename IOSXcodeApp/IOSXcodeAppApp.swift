//
//  IOSXcodeAppApp.swift
//  IOSXcodeApp
//
//  Created by AbrahamQian on 2020/12/19.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct IOSXcodeAppApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init() {
        AppCenter.start(withAppSecret: "5adbf1d7-33ea-4d5c-89d1-d97d58a9b40d", services:[
          Analytics.self,
          Crashes.self
        ])
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = df.string(from: date)
        
        print("Main Init method is called: "+dateString)
        Analytics.trackEvent("My custom event: "+dateString)
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        AppCenter.start(withAppSecret: "5adbf1d7-33ea-4d5c-89d1-d97d58a9b40d", services:[
//          Analytics.self,
//          Crashes.self
//        ])
//        print("Hello,I am here")
//        return true
//    }
//}
