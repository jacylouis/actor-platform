//
//  AppDelegate.swift
//  ActorClient
//
//  Created by Stepan Korshakov on 10.03.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

@objc class AppDelegate : UIResponder,  UIApplicationDelegate {
    
    // MARK: -
    // MARK: Private vars
    
    private var window : UIWindow?;
    private var binder = Binder()
    
    // MARK: -
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {

        // Apply styles
        
        MainAppTheme.navigation.applyAppearance(application)
        MainAppTheme.tab.applyAppearance(application)
        MainAppTheme.search.applyAppearance(application)
        
        
        // Register notifications
        if application.respondsToSelector("registerUserNotificationSettings:") {
            let types: UIUserNotificationType = (.Alert | .Badge | .Sound)
            let settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: types, categories: nil)
            application.registerUserNotificationSettings(settings)
            application.registerForRemoteNotifications()
        } else {
            application.registerForRemoteNotificationTypes(.Alert | .Badge | .Sound)
        }
        
        // Register hockey app
        if let hockey = NSBundle.mainBundle().infoDictionary?["HOCKEY"] as? String {
            if (hockey.trim().size() > 0) {
                BITHockeyManager.sharedHockeyManager().configureWithIdentifier(hockey)
                BITHockeyManager.sharedHockeyManager().updateManager.checkForUpdateOnLaunch = true
                BITHockeyManager.sharedHockeyManager().startManager()
                BITHockeyManager.sharedHockeyManager().authenticator.authenticateInstallation()
            }
        }
        
        // Creating main window
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds);
        window?.backgroundColor = UIColor.whiteColor()
        
        if (MSG.isLoggedIn()) {
            onLoggedIn()
        } else {
            // Create root layout for login
            
            let phoneController = AAAuthPhoneController()
            var loginNavigation = AANavigationController(rootViewController: phoneController)
            loginNavigation.navigationBar.tintColor = Resources.BarTintColor
            loginNavigation.makeBarTransparent()
            
            window?.rootViewController = loginNavigation
            window?.makeKeyAndVisible();
        }
        
        
        return true;
    }
    
    func onLoggedIn() {
        // Create root layout for app
        var rootController : UIViewController? = nil
        if (isIPad) {
            var splitController = MainSplitViewController()
            splitController.viewControllers = [MainTabController(), NoSelectionController()]
            
            rootController = splitController
        } else {
            var tabController = MainTabController()
            binder.bind(MSG.getAppState().getIsAppLoaded(), valueModel2: MSG.getAppState().getIsAppEmpty()) { (loaded: JavaLangBoolean?, empty: JavaLangBoolean?) -> () in
                if (empty!.booleanValue()) {
                    if (loaded!.booleanValue()) {
                        tabController.showAppIsEmptyPlaceholder()
                    } else {
                        tabController.showAppIsSyncingPlaceholder()
                    }
                } else {
                    tabController.hidePlaceholders()
                }
            }
            rootController = tabController
        }
        
        window?.rootViewController = rootController!
        window?.makeKeyAndVisible();
        

    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        MSG.onAppVisible();
    }

    func applicationDidEnterBackground(application: UIApplication) {
        MSG.onAppHidden();
    }
    
    // MARK: -
    // MARK: Notifications
    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        let tokenString = "\(deviceToken)".stringByReplacingOccurrencesOfString(" ", withString: "").stringByReplacingOccurrencesOfString("<", withString: "").stringByReplacingOccurrencesOfString(">", withString: "")
        MSG.registerApplePushWithInt(jint((NSBundle.mainBundle().objectForInfoDictionaryKey("API_PUSH_ID") as! String).toInt()!), withNSString: tokenString)
    }
    
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        println("\(userInfo)")
    }
    
}