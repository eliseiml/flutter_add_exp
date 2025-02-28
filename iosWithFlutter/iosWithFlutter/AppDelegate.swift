//
//  AppDelegate.swift
//  iosWithFlutter
//
//  Created by Yelisei Melnichuk on 28/02/2025.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FlutterAppLifeCycleProvider {
    private let lifecycleDelegate = FlutterPluginAppLifeCycleDelegate()
    
    let engines = FlutterEngineGroup(name: "flutter-engines", project: nil)
    var flutterEngineA: FlutterEngine!
    var flutterEngineB: FlutterEngine!
    
    func add(_ delegate: any FlutterApplicationLifeCycleDelegate) {
        lifecycleDelegate.add(delegate)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        flutterEngineA = engines.makeEngine(withEntrypoint: "flutterEntryPointA", libraryURI: "package:my_flutter/page_a.dart")
        flutterEngineB = engines.makeEngine(withEntrypoint: "flutterEntryPointB", libraryURI: "package:my_flutter/page_b.dart")
        
        GeneratedPluginRegistrant.register(with: self.flutterEngineA)
        GeneratedPluginRegistrant.register(with: self.flutterEngineB)
        
        lifecycleDelegate.application(application, didFinishLaunchingWithOptions: launchOptions ?? [:])
        
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

