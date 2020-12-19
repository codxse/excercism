//
//  DifferenceOfSquares.m
//  DifferenceOfSquares
//
//  Created by Nadiar Syaripul on 18/12/20.
//

#import "DifferenceOfSquares.h"
#include <math.h>

@implementation DifferenceOfSquares

- (id) initWithMax:(int)nCount {
    self = [super init];
    if (self) {
        [self setNCount:nCount];
    }
    return self;
}

- (int) squareOfSum {
    int result = 0;
    int count = [self nCount] + 1;
    for (int i=1; i<count; i++) {
        result += i;
    }
    return pow(result, 2);
}

- (int) sumOfSquares {
    int result = 0;
    int count = [self nCount] + 1;
    for (int i=1; i<count; i++) {
        result += pow(i, 2);
    }
    return result;
}

- (int) differenceOfSquares {
    return [self squareOfSum] - [self sumOfSquares];
}

@end
