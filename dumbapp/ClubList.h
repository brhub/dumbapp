//
//  ClubList.h
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClubList : NSObject

@property (nonatomic, strong) NSArray *clubs;

+ (NSArray *) getClubs;
+ (ClubList *) getInstance;

@end
