//
//  Leap.h
//  Leap Tests
//
//  Created by Nadiar Syaripul on 09/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Leap : NSObject

@property BOOL isLeapYear;

- (id) initWithCalendarYear:(NSNumber *)year;

@end

NS_ASSUME_NONNULL_END
