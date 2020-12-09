//
//  Leap.m
//  Leap Tests
//
//  Created by Nadiar Syaripul on 09/12/20.
//

#import "Leap.h"

@implementation Leap

- (id) initWithCalendarYear:(NSNumber *)year {
    self = [super init];
    if (self) {
        _isLeapYear = [Leap isDivisibleBy400:year] || (![Leap isDivisibleBy100:year] && [Leap isDivisibleBy4:year]);
    }
    return self;
}

+ (BOOL) isDivisibleBy4:(NSNumber *)year {
    return [year intValue] % 4 == 0;
}

+ (BOOL) isDivisibleBy100:(NSNumber *)year {
    return [year intValue] % 100 == 0;
}

+ (BOOL) isDivisibleBy400:(NSNumber *)year {
    return [year intValue] % 400 == 0;
}

@end
