//
//  Gigasecond.h
//  Gigasecond Tests
//
//  Created by Nadiar Syaripul on 12/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Gigasecond : NSObject

@property NSDate *dateFrom;

- (id)initWithStartDate:(NSDate*)date;

- (NSDate *)gigasecondDate;

@end

NS_ASSUME_NONNULL_END
