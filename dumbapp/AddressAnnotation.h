//
//  AddressAnnotation.h
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface AddressAnnotation : NSObject<MKAnnotation>
{
    NSString *title;
    NSString *subTitle;
}

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

- (id)initWithCoordinate:(CLLocationCoordinate2D) location;

@end
