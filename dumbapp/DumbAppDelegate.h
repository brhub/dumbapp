//
//  DumbAppDelegate.h
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DumbViewController;

@interface DumbAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) DumbViewController *viewController;

@end
