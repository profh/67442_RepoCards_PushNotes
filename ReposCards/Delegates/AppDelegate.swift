//  AppDelegate.swift
//  ReposCards


import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Adding in a request for notifications
    UNUserNotificationCenter.current().requestAuthorization(options:
      [.badge, .sound, .alert]) { granted, _ in
        guard granted else { return }
        DispatchQueue.main.async {
          application.registerForRemoteNotifications()
        }
    }
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
  }
  
  
  // MARK: Remote Notifications
  // This method simply allows us to see the device token so we can send PNs with our test server
  func application(_ application: UIApplication,
                   didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let token = deviceToken.reduce("") { $0 + String(format: "%02x", $1) }
    print(token)
  }
  
  // This method is supposed to display PNs in foreground
  // Not quite working, but trying to follow Apple docs on this...
  //  func userNotificationCenter(_ center: UNUserNotificationCenter,
  //                              willPresent notification: UNNotification,
  //                              withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
  //      completionHandler([.alert, .sound, .badge])
  //    }
  
}



