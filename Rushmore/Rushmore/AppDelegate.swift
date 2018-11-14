//
//  AppDelegate.swift
//  Rushmore
//
//  Created by Austin C on 10/2/18.
//  Copyright © 2018 Rushmore. All rights reserved.
//

import UIKit
import AWSMobileClient
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    static var Members = [User]()
    static var Rushees = [User]()
    
    
    
    
    static var curr_login = Members[0]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       /* AppDelegate.Members.append(User(firstName: "Austin", lastName: "Conry", userName: "aconry", password: "1234", type: 1, fraternity: ["Theta Tau"]))
        AppDelegate.Members.append(User(firstName: "first1", lastName: "Last1", userName: "mem1", password: "pass1", type: 1, fraternity: ["Sigma Alpha Epsilon"]))
        AppDelegate.Members.append(User(firstName: "first2", lastName: "last2", userName: "mem2", password: "pass2", type: 1, fraternity: ["Theta Tau"]))
        
        AppDelegate.Rushees.append(User(firstName: "first1", lastName: "last1", userName: "rush1", password: "pass1", type: 0, fraternity: ["Theta Tau"]))
        AppDelegate.Rushees.append(User(firstName: "first2", lastName: "last2", userName: "rush2", password: "pass2", type: 0, fraternity: ["Theta Tau"]))
        AppDelegate.Rushees.append(User(firstName: "first3", lastName: "last3", userName: "rush3", password: "pass3", type: 0, fraternity: ["Theta Tau"]))
 
        */



        
        return AWSMobileClient
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

