//
//  AppDelegate.m
//  Baccus
//
//  Created by David de Tena on 03/03/16.
//  Copyright © 2016 David de Tena. All rights reserved.
//

#import "AppDelegate.h"
#import "DTCWineModel.h"
#import "DTCWineViewController.h"
#import "DTCWebViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Create model
    DTCWineModel *tintorro = [DTCWineModel initWithName:@"Bembibre"
                                        wineCompanyName:@"Dominio de Tares"
                                                   type:@"tinto"
                                                 origin:@"El Bierzo"
                                                 grapes:@[@"Mencia"]
                                         wineCompanyWeb:[NSURL URLWithString:@"http://www.dominiodetares.com/portfolio/bembibre/"]
                                                  notes:@"Vendiamiado a mano racimo a racimo, fermentado con su propia levadura natural y criado durante 16 meses en barricas de roble francés y americano con 24 meses extra en botella."
                                                 rating:5
                                                  photo:[UIImage imageNamed:@"bembibre.jpg"]];
    
    // Create controller
    DTCWineViewController *wineVC = [[DTCWineViewController alloc] initWithModel:tintorro];
    DTCWebViewController *webVC = [[DTCWebViewController alloc] initWithModel:tintorro];
    
    // Create TabBar
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers:@[wineVC, webVC]];
    
    // Set TabBarController as default root controller
    [self.window setRootViewController:tabVC];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
