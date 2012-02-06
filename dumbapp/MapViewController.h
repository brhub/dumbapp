//
//  MapViewController.h
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "AddressAnnotation.h"

@interface MapViewController : UIViewController<MKMapViewDelegate, UITextFieldDelegate>
{
    AddressAnnotation *addAnnotation;
}

@property (unsafe_unretained, nonatomic) IBOutlet UITextField *searchField;

@property (unsafe_unretained, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, copy) NSString *searchText;

- (IBAction)performSearch:(id)sender;
- (CLLocationCoordinate2D)addressLocation;

@end
