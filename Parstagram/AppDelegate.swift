//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Efrain Pamatz on 3/8/21.
//  Copyright © 2021 Efrain Pamatz. All rights reserved.
//

import UIKit
import Parse
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // --- Copy this only

        let parseConfig = ParseClientConfiguration {
            $0.applicationId = "A6EarvZwF1y4C4KOv9DDBHT0ms6XH8RHS93uv1yh" // <- UPDATE
            $0.clientKey = "nq3qcck7DM3349Y506QDrUPYQQ44p3FNuHjw7YMR" // <- UPDATE
                $0.server = "https://parseapi.back4app.com/"
        }
        Parse.initialize(with: parseConfig)

        // --- end copy


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
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    

}

