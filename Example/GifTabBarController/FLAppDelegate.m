//
//  FLAppDelegate.m
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import "FLAppDelegate.h"
#import "GifTabBarHeader.h"

@implementation FLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UIViewController *one = [[UIViewController alloc]init];
    one.view.backgroundColor = [UIColor blueColor];
    UIViewController *two = [[UIViewController alloc]init];
    two.view.backgroundColor = [UIColor redColor];
    UIViewController *three = [[UIViewController alloc]init];
    three.view.backgroundColor = [UIColor yellowColor];
    UIViewController *four = [[UIViewController alloc]init];
    four.view.backgroundColor = [UIColor greenColor];
    UIViewController *five = [[UIViewController alloc]init];
    five.view.backgroundColor = [UIColor grayColor];
    
    NSURL *url1 = [[NSBundle mainBundle] URLForResource:@"giphy-1" withExtension:@"gif"];
    NSURL *url2 = [[NSBundle mainBundle] URLForResource:@"giphy-2" withExtension:@"gif"];
    NSURL *url3 = [[NSBundle mainBundle] URLForResource:@"giphy-3" withExtension:@"gif"];
    NSURL *url4 = [[NSBundle mainBundle] URLForResource:@"giphy-4" withExtension:@"gif"];
    NSURL *url5 = [[NSBundle mainBundle] URLForResource:@"giphy-5" withExtension:@"gif"];
    
    GifTabBarItem *oneTabBarItem = [[GifTabBarItem alloc]initWithTitle:@"One" gifUrlString:[url1 absoluteString] viewController:one];
    
    GifTabBarItem *twoTabBarItem = [[GifTabBarItem alloc]initWithTitle:@"Two" gifUrlString:[url2 absoluteString] viewController:two];
    
    GifTabBarItem *threeTabBarItem = [[GifTabBarItem alloc]initWithTitle:@"Three" gifUrlString:[url3 absoluteString] viewController:three normalImage:[UIImage imageNamed:@"colors-circle-1"] selectedImage:[UIImage imageNamed:@"colors-circle-1"]];
    
    GifTabBarItem *fourTabBarItem = [[GifTabBarItem alloc]initWithTitle:@"Four" gifUrlString:[url4 absoluteString] viewController:four];
    GifTabBarItem *fiveTabBarItem = [[GifTabBarItem alloc]initWithTitle:@"Five" gifUrlString:[url5 absoluteString] viewController:five];
    
    GifTabBarController *tab = [[GifTabBarController alloc]initWithTabItems:@[oneTabBarItem,twoTabBarItem,threeTabBarItem,fourTabBarItem,fiveTabBarItem]];
    
    self.window.rootViewController = tab;
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
