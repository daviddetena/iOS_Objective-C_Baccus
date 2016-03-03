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
    
    // Create model(s)
    DTCWineModel *tintorro = [DTCWineModel initWithName:@"Bembibre"
                                        wineCompanyName:@"Dominio de Tares"
                                                   type:@"tinto"
                                                 origin:@"El Bierzo"
                                                 grapes:@[@"Mencia"]
                                         wineCompanyWeb:[NSURL URLWithString:@"http://www.dominiodetares.com/portfolio/bembibre/"]
                                                  notes:@"Vendiamiado a mano racimo a racimo, fermentado con su propia levadura natural y criado durante 16 meses en barricas de roble francés y americano con 24 meses extra en botella."
                                                 rating:5
                                                  photo:[UIImage imageNamed:@"bembibre.jpg"]];
    
    DTCWineModel *albarinno = [DTCWineModel initWithName:@"Zárate"
                                        wineCompanyName:@"Zárate"
                                                   type:@"white"
                                                 origin:@"Rías Bajas"
                                                 grapes:@[@"Albariño"]
                                         wineCompanyWeb:[NSURL URLWithString:@"http://bodegas-zarate.com/productos/vinos/albarino-zarate/"]
                                                  notes:@"El albariño Zárate es un vino blanco monovarietal que pertenece a la denominación de origen Rias Baixas. Considerado por la crítica especializada como uno de los grandes vinos blancos del mundo, el albariño ya es todo un mito"
                                                 rating:4
                                                  photo:[UIImage imageNamed:@"zarate.gif"]];
    
    DTCWineModel *champagne = [DTCWineModel initWithName:@"Contes de Champagne"
                                         wineCompanyName:@"Champagne de Taittinger"
                                                    type:@"other"
                                                  origin:@"Champagne"
                                                  grapes:@[@"Chardonnay"]
                                          wineCompanyWeb:[NSURL URLWithString:@"http://www.taittinger.com"]
                                                   notes:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu fringilla ligula. Sed consectetur libero sit amet pulvinar tincidunt. Mauris vehicula dui in metus porta tincidunt. Praesent commodo ornare metus semper pellentesque. Praesent vehicula ut leo eu suscipit. Aliquam eu velit sem. Donec accumsan mauris eget nibh vulputate rutrum. Integer condimentum ullamcorper aliquet. Duis tincidunt malesuada nisi ut consequat. In lacinia nec tellus non molestie. Donec ullamcorper ligula nisi, ac interdum nisl commodo at. Duis et nisi sed orci vehicula ullamcorper eget id ligula. Ut cursus posuere metus, vestibulum congue urna eleifend sed. Integer ultricies tellus eu neque convallis venenatis. Sed luctus, augue viverra consequat porta, massa arcu interdum ante, sed finibus diam purus vel neque. Nullam a est pellentesque, bibendum tellus quis, molestie lorem."
                                                  rating:4
                                                   photo:[UIImage imageNamed:@"comtesDeChampagne.jpg"]];
    
    // Create controllers
    DTCWineViewController *redVC = [[DTCWineViewController alloc] initWithModel:tintorro];
    DTCWineViewController *whiteVC = [[DTCWineViewController alloc] initWithModel:albarinno];
    DTCWineViewController *otherVC = [[DTCWineViewController alloc] initWithModel:champagne];
    
    // Create UINavigationControllers for each wine
    UINavigationController *redNavVC = [[UINavigationController alloc] initWithRootViewController:redVC];
    UINavigationController *whiteNavVC = [[UINavigationController alloc] initWithRootViewController:whiteVC];
    UINavigationController *otherNavVC = [[UINavigationController alloc] initWithRootViewController:otherVC];
    
    // Tab bar including the three wines
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    [tabBar setViewControllers:@[redNavVC, whiteNavVC, otherNavVC]];
    [self.window setRootViewController:tabBar];
    
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
