//
//  Hamming.m
//  Hamming
//
//  Created by Nadiar Syaripul on 27/12/20.
//

#import "Hamming.h"

@implementation Hamming

+ (unsigned int) compute:(NSString *)strand1 against:(NSString *)strand2 {
    
    unsigned int diff = 0;
    
    for (int i = 0; i<[strand1 length]; i++) {
        NSString *a = [strand1 substringWithRange:NSMakeRange(i, 1)];
        NSString *b = [strand2 substringWithRange:NSMakeRange(i, 1)];
        
        if ([a isNotEqualTo:b]) {
            diff++;
        }
    }
    
    return diff;
}

@end
