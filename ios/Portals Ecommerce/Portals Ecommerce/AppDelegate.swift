import UIKit
import IonicPortals

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Register Portals
        // PortalManager.register("YOUR_KEY_HERE");
        
        // Setup Ionic Portals
        let checkoutPortal = Portal("checkout", "portals/shopwebapp")
        PortalManager.addPortal(checkoutPortal)
        
        let helpPortal = Portal("help", "portals/shopwebapp")
        PortalManager.addPortal(helpPortal)
        
        let userPortal = Portal("user", "portals/shopwebapp")
        PortalManager.addPortal(userPortal)
        
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
