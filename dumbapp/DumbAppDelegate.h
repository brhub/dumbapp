//
//  DumbAppDelegate.h
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"

@class MapViewController;

@interface DumbAppDelegate : UIResponder <UIApplicationDelegate>
{
    MapViewController *_mapViewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MapViewController *mapViewController;

@end
