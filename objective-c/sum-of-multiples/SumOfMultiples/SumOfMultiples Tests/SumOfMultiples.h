//
//  SumOfMultiples.h
//  SumOfMultiples
//
//  Created by Nadiar Syaripul on 19/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SumOfMultiples : NSObject

+ (NSNumber *) toLimit:(NSNumber *)start inMultiples:(NSArray<NSNumber *> *)factorOf;

@end

NS_ASSUME_NONNULL_END
