//
//  Hamming.h
//  Hamming
//
//  Created by Nadiar Syaripul on 27/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Hamming : NSObject

+ (unsigned int) compute:(NSString *)strand1 against:(NSString *)strand2;

@end

NS_ASSUME_NONNULL_END
