//
//  AddressAnnotation.m
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddressAnnotation.h"

@implementation AddressAnnotation

@synthesize coordinate;

- (NSString *)subtitle
{
    return @"Sub Title";
}

- (NSString *)title
{
    return @"Title";
}

- (id)initWithCoordinate:(CLLocationCoordinate2D) c
{
    coordinate = c;
    NSLog(@"%f, %f", coordinate.latitude, coordinate.longitude);
    return self;
}
@end
