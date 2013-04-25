//
//  AppDelegate.m
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "ReadBookViewController.h"
#import "MusicViewController.h"
#import "LearnJapanViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    MainViewController *mainViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    ReadBookViewController *readBookViewController = [[ReadBookViewController alloc] initWithNibName:@"ReadBookViewController" bundle:nil];
    MusicViewController *musicViewController = [[MusicViewController alloc] initWithNibName:@"MusicViewController" bundle:nil];
    LearnJapanViewController *learnJapanViewController = [[LearnJapanViewController alloc] initWithNibName:@"LearnJapanViewController" bundle:nil];
    
    
    UINavigationController *nav01 = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    nav01.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"0005.png"] tag:0];
    
    UINavigationController *nav02 = [[UINavigationController alloc] initWithRootViewController:readBookViewController];
    nav02.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Read Book" image:[UIImage imageNamed:@"0008.png"] tag:1];
    
    UINavigationController *nav03 = [[UINavigationController alloc] initWithRootViewController:musicViewController];
    nav03.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Music" image:[UIImage imageNamed:@"0009.png"] tag:2];
    
    UINavigationController *nav04 = [[UINavigationController alloc] initWithRootViewController:learnJapanViewController];
    nav04.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Japan Language" image:[UIImage imageNamed:@"0011.png"] tag:3];

    UITabBarController * tabBar = [[UITabBarController alloc] init];
    
    tabBar.viewControllers = @[nav01, nav02, nav03, nav04];
    [nav01 setNavigationBarHidden:YES];
//    [nav02 setNavigationBarHidden:YES];
    [nav03 setNavigationBarHidden:YES];
    [nav04 setNavigationBarHidden:YES];
    
    self.window.rootViewController = tabBar;
    
    [self.window makeKeyAndVisible];
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
