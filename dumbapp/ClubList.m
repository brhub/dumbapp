//
//  ClubList.m
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClubList.h"

@implementation ClubList

static ClubList *instance_;

@synthesize clubs;

+ (NSArray *)getClubs
{
    return [self getInstance].clubs;
}
             
+ (ClubList *)getInstance
{
    @synchronized(self)
    {
        if (instance_ == nil)
            instance_ = [[self alloc] init];
    }
    return instance_;
}

- (id)init
{
    self = [super init];
    instance_ = self;
    return self;
}

@end
