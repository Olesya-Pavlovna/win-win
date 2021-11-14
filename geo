CLGeocoder * geoCoder = [[CLGeocoder alloc] init];
[geoCoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray *placemarks, NSError *error) {

    NSString * location = ([placemarks count] > 0) ? [[placemarks objectAtIndex:0] locality] : @"Not Found";

    CLPlacemark *placemark = [placemarks objectAtIndex:0];

    NSString *MyAddress = @"";
    MyAddress = [[placemark.addressDictionary objectForKey:@"FormattedAddressLines"] componentsJoinedByString:@", "];
    NSLog(@"address is %@", MyAddress);
}];
