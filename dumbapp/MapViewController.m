//
//  MapViewController.m
//  dumbapp
//
//  Created by Artem Ivanyuk on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController
@synthesize searchField;
@synthesize mapView;
@synthesize searchText;

- (void)viewDidUnload
{
    [self setSearchField:nil];
    [self setMapView:nil];
    [super viewDidUnload];
}

- (IBAction)performSearch:(id)sender {
    [searchField resignFirstResponder];
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.2;
    span.longitudeDelta = 0.2;

    CLLocationCoordinate2D location = [self addressLocation];
    region.span = span;
    region.center = location;
    if (addAnnotation != nil)
    {
        [mapView removeAnnotation:addAnnotation];
//        [addAnnotation release];
        addAnnotation = nil;
    }
    
    addAnnotation = [[AddressAnnotation alloc] initWithCoordinate:location];
    [mapView addAnnotation:addAnnotation];
    [mapView setRegion:region animated:YES];
    [mapView regionThatFits:region];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == searchField) {
        [searchField resignFirstResponder];
    }
    return YES;
}

- (CLLocationCoordinate2D)addressLocation
{
    NSString *urlString = [NSString stringWithFormat:@"http://maps.google.com/maps/geo?q=%@&output=csv", 
                           [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSString *locationString = [NSString stringWithContentsOfURL:[NSURL URLWithString:urlString] 
                                                        encoding:NSUTF8StringEncoding error:nil];
    NSArray *listItems = [locationString componentsSeparatedByString:@","];
    
    double latitude = 0;
    double longitude = 0;
    
    if ([listItems count] >= 4 && [[listItems objectAtIndex:0] isEqualToString:@"200"])
    {
        latitude = [[listItems objectAtIndex:2] doubleValue];
        longitude = [[listItems objectAtIndex:3] doubleValue];
    }
    else 
    {
        //show error
    }
     
    CLLocationCoordinate2D location;
    location.latitude = latitude;
    location.longitude = longitude;   
    
    return location;
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView * annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentLoc"];
    annotationView.pinColor = MKPinAnnotationColorGreen;
    annotationView.animatesDrop = YES;
    annotationView.canShowCallout = YES;
    annotationView.calloutOffset = CGPointMake(-5, 5);
    return annotationView;
}

@end
