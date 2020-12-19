//
//  DifferenceOfSquares.h
//  DifferenceOfSquares
//
//  Created by Nadiar Syaripul on 18/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DifferenceOfSquares : NSObject

@property int nCount;

- (id) initWithMax:(int)maxValue;
- (int) squareOfSum;
- (int) sumOfSquares;
- (int) differenceOfSquares;
@end

NS_ASSUME_NONNULL_END
