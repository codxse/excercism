//
//  Gigasecond.m
//  Gigasecond Tests
//
//  Created by Nadiar Syaripul on 12/12/20.
//

#import "Gigasecond.h"

@implementation Gigasecond

- (id)initWithStartDate:(NSDate *)date {
    self = [super init];
    if (self) {
        [self setDateFrom:date];
    }
    return self;
}

- (NSDate *)gigasecondDate {
    double gigasecond = 1000000000;
    return [_dateFrom dateByAddingTimeInterval:gigasecond];
}

@end
