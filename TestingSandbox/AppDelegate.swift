//
//  AppDelegate.swift
//  TestingSandbox
//
//  Created by Adam Price on 2/19/20.
//  Copyright © 2020 Butterfly Network. All rights reserved.
//

import UIKit
import TestingSandboxLibrary

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var service: EDOHostService?
    var person: Person?
    
    override init() {
        self.service = nil
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if CommandLine.arguments.contains("--uitesting") {
            let initValue = UserDefaults.standard.integer(forKey: "initValue")
            let portNumber = UserDefaults.standard.integer(forKey: "servicePort")
            self.person = Person(value: initValue)
            self.service = EDOHostService(port: UInt16(portNumber),
                                          rootObject: self.person,
                                          queue: DispatchQueue.main)
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
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        self.service?.invalidate()
    }
    
}

